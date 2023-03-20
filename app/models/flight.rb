class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def details
    "Flight from #{departure_airport.code} to #{arrival_airport.code} at #{start_time.strftime("%A, %d %b %Y %l:%M %p")}"
  end
end
