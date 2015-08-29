class Reservation < ActiveRecord::Base
  belongs_to :user

  belongs_to :reservable, polymorphic: true

  enum status: [:"Pendiente", :"Cancelada", :"Aceptada", :"Finalizada"]

  def self.query(startdate,enddate)
  	#collistions_first = Reservation.where(startdate: startdate..enddate)
  	#collistions_last = Reservation.where(enddate: startdate..enddate)
  	collistions_first = Reservation.where("startdate > ? and startdate < ?", startdate, enddate)
    collistions_last = Reservation.where("enddate > ? and enddate < ?", startdate, enddate)
  	collissions_between = Reservation.where("startdate <= ? and enddate >= ?", startdate, enddate)
  	return collistions_first + collistions_last + collissions_between
  end
end
