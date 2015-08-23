class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.integer :capacity
      t.decimal :cost
      t.text :goods
      t.float :latitude
      t.float :longitude
      t.integer :status
      t.references :category, index: true, foreign_key: true
      t.references :role, index: true, foreign_key: true
      t.references :dayoff, index: true, foreign_key: true
      t.references :localization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
