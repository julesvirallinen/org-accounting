class CreateAccountingYears < ActiveRecord::Migration
  def change
    create_table :accounting_years do |t|
      t.integer :year

      t.timestamps null: false
    end
  end
end
