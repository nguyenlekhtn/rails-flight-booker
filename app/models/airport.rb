class Airport < ApplicationRecord
  validates :code, length: {is: 3}

  has_many :departure_flights, foreign_key: "departure_airport_id", class_name: "Flight"
  has_many :arrival_flights, foreign_key: "arrival_airport_id", class_name: "Flight"
end
