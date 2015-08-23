class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reservations, as: :reservable
  has_many :place_reservations, through: :reservations, source: :place
  has_many :stuff_reservations, through: :reservations, source: :stuff
end
