class CreateLocalizations < ActiveRecord::Migration
  def change
    create_table :localizations do |t|
      t.string :state
      t.string :division
      t.string :campus
      t.string :building
      t.integer :floor
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
