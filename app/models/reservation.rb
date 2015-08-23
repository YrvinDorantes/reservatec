class Reservation < ActiveRecord::Base
  belongs_to :user

  belongs_to :reservable, polymorphic: true

  enum status: [:"Reservando...", :"Cancelada", :"Pendiente", :"Aceptada", :"Finalizada"]
end
