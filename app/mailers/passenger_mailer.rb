class PassengerMailer < ApplicationMailer
  default from: "ashvsmay00gmail.com"
  def confirmation_email
    @passengers = params[:passengers]

    mail(to: @passengers.map { |passenger| passenger.email }, subject: "You have booked your ticket")
  end
end
