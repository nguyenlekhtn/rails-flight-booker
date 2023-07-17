require "test_helper"

class PassengerMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "confirmation" do
    passenger = Passenger.new(name: "aaa", email: "mail@example.com")
    email = PassengerMailer.confirmation_email(passengers(:passenger_one))

    assert_emails 1 do
      email.deliver_now
    end
    assert_equal ["ashvsmay00gmail.com"], email.from
    assert_equal ["one@examkple.com"], email.to
    assert_equal "You have booked your ticket", email.subject
  end
end
