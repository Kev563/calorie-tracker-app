require "test_helper"

class FoodLogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get food_log_index_url
    assert_response :success
  end
end
