class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :startdate
      t.datetime :enddate
      t.text :guest
      t.integer :status
      t.string :userapproved

      t.timestamps null: false
    end
  end
end
