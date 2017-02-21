class AddCategoryIdToExpense < ActiveRecord::Migration
  def change
    add_column :expenses, :category_id, :integer
    add_index  :expenses, :category_id

  end
end
