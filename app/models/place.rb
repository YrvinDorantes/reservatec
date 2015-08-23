class Place < ActiveRecord::Base
  belongs_to :category
  belongs_to :role
  belongs_to :dayoff
  belongs_to :localization

  enum status: [:"No Disponible", :"Disponible"]

  has_many :reservations, as: :reservable
  has_many :user_reservations, through: :reservations, :source => :user
end
