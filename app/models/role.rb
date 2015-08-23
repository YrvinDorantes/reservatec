class Role < ActiveRecord::Base
	has_many :places
	has_many :stuffs
	has_many :reservations
end
