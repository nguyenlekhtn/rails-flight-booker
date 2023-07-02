require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "confirmation" do
    assert_emails 1 do
      params = {booking: {flight_id: Flight.first.id, passengers_attributes: [{name: "aaa", email: "aaa@example.com"}]}}
      post bookings_url, params: params
    end
  end
end
