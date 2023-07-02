class PassengerMailer < ApplicationMailer
  default from: "ashvsmay00gmail.com"
  def confirmation_email
    @passenger = params[:passenger]

    mail(to: @passenger.email, subject: "You have booked your ticket")
  end
end
