class Place < ActiveRecord::Base
  belongs_to :category
  belongs_to :role
  belongs_to :dayoff
  belongs_to :localization
end
