require 'rails_helper'

RSpec.describe "expenses/edit", type: :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      :description => "MyString",
      :receipt_url => "MyString",
      :user_id => 1,
      :meeting_id => 1,
      :accepted => false,
      :bookkeeping => 1,
      :amount => 1
    ))
  end

  it "renders the edit expense form" do
    render

    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do

      assert_select "input#expense_description[name=?]", "expense[description]"

      assert_select "input#expense_receipt_url[name=?]", "expense[receipt_url]"

      assert_select "input#expense_user_id[name=?]", "expense[user_id]"

      assert_select "input#expense_meeting_id[name=?]", "expense[meeting_id]"

      assert_select "input#expense_accepted[name=?]", "expense[accepted]"

      assert_select "input#expense_bookkeeping[name=?]", "expense[bookkeeping]"

      assert_select "input#expense_amount[name=?]", "expense[amount]"
    end
  end
end
