json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :startdate, :enddate, :guest, :status, :userapproved
  json.url reservation_url(reservation, format: :json)
end
