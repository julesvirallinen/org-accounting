class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  before_action :set_meetings, only: [:edit, :update, :new, :create]
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]
  before_filter :admin_only, only: [:index, :destroy]


  # GET /expenses
  # GET /expenses.json
  def index
    if params[:unpaid] == "false"
      @expenses = Expense.where(paid: false)
    elsif params[:meeting] == "false"
      @expenses = Expense.where(meeting_id: nil)
    elsif params[:accepted] == "false"
      @expenses = Expense.where(accepted: false)
    else
      @expenses = Expense.all.order(date: :desc)
    end
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params)

    respond_to do |format|
      if @expense.save
        current_user.expenses << @expense
        format.html { redirect_to @expense, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if (@expense.user == current_user || current_user.admin?) && @expense.update(expense_params)
        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_meetings
    @meetings = Meeting.all
    @accounting_years = AccountingYear.all
    @categories = Category.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_expense
    @expense = Expense.find(params[:id])

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def expense_params
    params.require(:expense).permit(:description, :receipt_url, :user_id, :meeting_id, :accepted, :bookkeeping, :euros, :paid, :date_paid, :explanation, :date, :accounting_year_id, :category_id)
  end

  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
  end



end
