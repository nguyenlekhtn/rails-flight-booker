class FlightsController < ApplicationController
  def index
    @depature_codes = Airport.all.map { |airport| [airport.code, airport.id] }
    @arrival_airports = @depature_airports
    @num_passengers = [1, 2, 3, 4].map { |num| [num, num] }
    @dates = Flight.order(:start_time).map { |flight| [flight.start_time.strftime("%A, %d %b %Y %l:%M %p"), flight.start_time] }
  end
end
