class Dayoff < ActiveRecord::Base
	has_many :places
	has_many :stuffs
end
