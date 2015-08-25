ActiveAdmin.register Localization do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :id, :state, :division, :campus, :building, :floor, :latitude, :longitude
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

# index do
# 	column :id
# 	column :state
# 	column :division
# 	column :campus
# 	column :building
# 	column :floor
# 	column :latitude
# 	column :longitude
# end

end
