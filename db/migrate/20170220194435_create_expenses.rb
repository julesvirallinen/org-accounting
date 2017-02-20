class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :description
      t.string :receipt_url
      t.integer :user_id
      t.integer :meeting_id
      t.boolean :accepted
      t.integer :bookkeeping
      t.integer :amount

      t.timestamps null: false
    end
  end
end
