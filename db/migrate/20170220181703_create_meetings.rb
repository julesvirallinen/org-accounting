class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.date :date
      t.string :meeting
      t.string :place

      t.timestamps null: false
    end
  end
end
