class FlightsController < ApplicationController
  def index
    @depature_codes = Airport.all.map { |airport| [airport.code, airport.id] }
    @arrival_codes = @depature_codes
    @num_passengers = [1, 2, 3, 4].map { |num| [num, num] }
    @dates = Flight.order(:start_time).to_a.lazy.map { |flight| flight.start_time.to_date }.to_set.map { |time| [time.strftime("%A, %d %b %Y %l:%M %p"), time.strftime("%Y%m%d")] }
  end
end
