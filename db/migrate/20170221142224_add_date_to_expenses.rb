class AddDateToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :date, :date
    add_index  :expenses, :date
  end
end
