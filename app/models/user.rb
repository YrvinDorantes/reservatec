class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role

  has_many :reservations, as: :reservable
  has_many :place_reservations, through: :reservations, source: :place
  has_many :stuff_reservations, through: :reservations, source: :stuff

  before_save :default_values

  def default_values
	self.role_id ||=5
  end
end
