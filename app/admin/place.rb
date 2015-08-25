ActiveAdmin.register Place do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :capacity, :cost, :goods, :latitude, :longitude, :status, :category_id, :dayoff_id, :localization_id, :role_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

index do
	column :id
	column :name
	column :category do |c|
		c.category.description
	end
	column :description
	column :localization_id
	column :capacity
	column :cost
	column :goods
	column :latitude
	column :longitude
	column :status
	column :role
	column :dayoff do |d|
		d.dayoff.day
	end	
	actions
end

form do |f|
	f.inputs 'New Place' do
		f.input :name
		f.input :category_id, as: :select, collection: Category.all.map{|c| ["#{c.description}", c.id]}
		f.input :description
		f.input :localization_id, as: :select, collection: Localization.all.map{|l| ["#{l.state}, #{l.campus}, #{l.building}, Piso #{l.floor}", l.id]}
		f.input :capacity
		f.input :cost
		f.input :goods
		f.input :latitude
		f.input :longitude
		f.input :status, as: :select, collection: Place.statuses.keys
		f.input :role_id, as: :select, collection: Role.all.map{|r| ["#{r.role}, #{r.description}", r.id]}
		f.input :dayoff_id, as: :select, collection: Dayoff.all.map{|d| ["#{d.day}", d.id]}
	end
	f.actions
end


end
