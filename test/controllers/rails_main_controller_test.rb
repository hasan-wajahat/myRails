require 'test_helper'

class RailsMainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rails_main_index_url
    assert_response :success
  end

end
