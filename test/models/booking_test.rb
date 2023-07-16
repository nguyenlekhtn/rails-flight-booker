require "test_helper"

class BookingTest < ActiveSupport::TestCase
  test "fixtures are valid" do
    bookings.each do |q|
      assert q.valid?, q.errors.full_messages.inspect
    end
  end
end
