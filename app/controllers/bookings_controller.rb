class BookingsController < ApplicationController
  def new
    @flight_id = params[:flight_id]
    @num_tickets = params[:num_tickets]
    @flight = Flight.find(@flight_id)
    @booking = @flight.bookings.build
    num_tickets = params[:num_tickets].to_i
    num_tickets.times { @booking.passengers.build }
  end

  def create
  end
end
