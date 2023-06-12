class BookingsController < ApplicationController
  def new
    @flight_id = params[:flight_id]
    @num_tickets = params[:num_tickets]
    @flight = Flight.find(@flight_id)
    @booking = @flight.bookings.build
    @num_tickets = params[:num_tickets].to_i
    # num_tickets.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
    @passengers = @booking.passengers
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end
end
