class CreateDayoffs < ActiveRecord::Migration
  def change
    create_table :dayoffs do |t|
      t.text :day

      t.timestamps null: false
    end
  end
end
