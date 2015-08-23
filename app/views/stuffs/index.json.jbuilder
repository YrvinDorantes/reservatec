json.array!(@stuffs) do |stuff|
  json.extract! stuff, :id, :name, :description, :cuantity, :cost, :status, :role_id, :dayoff_id, :localization_id
  json.url stuff_url(stuff, format: :json)
end
