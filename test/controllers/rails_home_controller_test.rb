require 'test_helper'

class RailsHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rails_home_index_url
    assert_response :success
  end

end
