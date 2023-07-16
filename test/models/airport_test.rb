require "test_helper"

class AirportTest < ActiveSupport::TestCase
  test "fixtures are valid" do
    airports.each do |q|
      assert q.valid?, q.errors.full_messages.inspect
    end
  end
end
