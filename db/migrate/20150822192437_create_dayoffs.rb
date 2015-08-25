class CreateDayoffs < ActiveRecord::Migration
  def change
    create_table :dayoffs do |t|
      t.text :day, array: true, default: []

      t.timestamps null: false
    end
  end
end
