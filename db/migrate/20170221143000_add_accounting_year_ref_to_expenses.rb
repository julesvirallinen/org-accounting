class AddAccountingYearRefToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :accounting_year_id, :integer
    add_index  :expenses, :accounting_year_id

  end
end
