require "test_helper"

class PassengerTest < ActiveSupport::TestCase
  test "fixtures are valid" do
    passengers.each do |q|
      assert q.valid?, q.errors.full_messages.inspect
    end
  end
end
