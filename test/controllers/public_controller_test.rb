require 'test_helper'

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get public_landing_url
    assert_response :success
  end

end
