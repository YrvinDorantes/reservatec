class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
      t.string :name
      t.text :description
      t.integer :cuantity
      t.float :cost
      t.integer :status
      t.references :role, index: true, foreign_key: true
      t.references :dayoff, index: true, foreign_key: true
      t.references :localization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
