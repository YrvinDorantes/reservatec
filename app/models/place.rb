class Place < ActiveRecord::Base
  belongs_to :category
  belongs_to :role
  belongs_to :dayoff
  belongs_to :localization

  enum status: [:"No Disponible", :"Disponible"]

  has_many :reservations, as: :reservable
  has_many :user_reservations, through: :reservations, source: :user

  def self.busy_places(startdate, enddate)
  	free_places =Reservation.query(startdate, enddate)
  	free_places_ids = free_places.collect(&:reservable_id)
  	Place.find(free_places_ids)
  end

  def self.free_places(startdate, enddate)
  	Place.all - Place.busy_places(startdate, enddate)
  end

end
