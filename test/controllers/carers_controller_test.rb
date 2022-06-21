require "test_helper"

class CarersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carers_index_url
    assert_response :success
  end
end
