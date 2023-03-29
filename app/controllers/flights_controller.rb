class FlightsController < ApplicationController
  def index
    @depature_codes = Airport.all.map { |airport| [airport.code, airport.id] }
    @arrival_codes = @depature_codes
    @num_passengers = [1, 2, 3, 4]
    @dates = Flight.order(:start_time).to_a.map { |flight| flight.start_time.to_date }.uniq.map { |date| [date.strftime("%A, %d %b %Y"), date.strftime("%Y%m%d")] }
    if search_query_existed?
      departure_airport_id = params[:departure_code]
      arrival_airport_id = params[:arrival_code]
      start_date = Date.strptime(params[:date], "%Y%m%d")
      start_time = start_date.beginning_of_day..start_date.end_of_day
      @matched_flights = Flight.includes(:departure_airport, :arrival_airport).where(departure_airport_id:, arrival_airport_id:, start_time:).order(:start_time)
      @num_tickets = params[:num_tickets]
    end
  end

  private def search_query_existed?
    params[:departure_code] && params[:arrival_code] && params[:date] && params[:num_tickets]
  end
end
