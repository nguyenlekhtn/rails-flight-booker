require "test_helper"

class FlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  test "fixtures are valid" do
    airports.each do |q|
      assert q.valid?, q.errors.full_messages.inspect
    end
  end
end
