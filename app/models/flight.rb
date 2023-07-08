class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
  has_many :bookings, dependent: :destroy

  def details
    "Flight #{info}"
  end

  def info
    "from #{departure_airport.code} to #{arrival_airport.code} at #{pretty_start_time}"
  end

  def pretty_start_time
    start_time.strftime("%A, %d %b %Y %l:%M %p")
  end
end
