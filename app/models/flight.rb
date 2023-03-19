class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def to_s
    "Flight from #{departure_airport.code} to #{arrival_code.code}"
  end
end
