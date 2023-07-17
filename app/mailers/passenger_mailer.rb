class PassengerMailer < ApplicationMailer
  default from: "jcf4vmrb@tipped3603.anonaddy.com"
  def confirmation_email(passenger)
    @passenger = passenger
    @flight = passenger.booking.flight
    mail(to: passenger.email, subject: "You have booked your ticket")
  end
end
