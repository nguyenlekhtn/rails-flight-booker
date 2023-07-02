require "test_helper"

class PassengerMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "confirmation" do
    email = PassengerMailer.with(passenger: Passenger.new(name: "aaa", email: "mail@example.com")).confirmation_email

    assert_emails 1 do
      email.deliver_now
    end
    assert_equal ["ashvsmay00gmail.com"], email.from
    assert_equal ["mail@example.com"], email.to
    assert_equal "You have booked your ticket", email.subject
  end
endbinding.break
