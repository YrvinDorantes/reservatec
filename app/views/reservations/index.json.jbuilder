json.array!(@reservations) do |reservation|
  json.extract! reservation,:guest, :status, :userapproved, :user_id
  json.start reservation.startdate
  json.end reservation.enddate
  json.url reservation_url(reservation, format: :json)
  if (reservation.startdate < Time.now)
    json.color 'grey'
  end
  if (reservation.startdate == Time.now)
    json.color 'green'
  end
  if (reservation.startdate > Time.now)
    json.color '#378006'
  end
  json.title reservation.reservable.name
end