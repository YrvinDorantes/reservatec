json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :startdate, :enddate, :guest, :status, :userapproved, :user_id
  json.url reservation_url(reservation, format: :json)
end
