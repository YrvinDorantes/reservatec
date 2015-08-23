json.array!(@places) do |place|
  json.extract! place, :id, :name, :description, :capacity, :cost, :goods, :latitude, :longitude, :status, :category_id, :role_id, :dayoff_id, :localization_id
  json.url place_url(place, format: :json)
end
