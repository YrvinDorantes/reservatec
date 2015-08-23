class AddReservableToReservation < ActiveRecord::Migration
  def change
    add_reference :reservations, :reservable, polymorphic: true, index: true
  end
end
