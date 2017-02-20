class ChangeExpensesDefaultsAndAddMoney < ActiveRecord::Migration
  def change
    add_column :expenses, :euros, :decimal, :precision => 8, :scale => 2
    add_column :expenses, :explanation, :text
    add_column :expenses, :date_paid, :date
    add_column :expenses, :paid, :boolean, default: false

    change_column_default(:expenses, :accepted, false)


  end
end
