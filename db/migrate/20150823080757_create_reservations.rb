class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :startdate
      t.datetime :enddate
      t.text :guest
      t.integer :status
      t.string :userapproved
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
