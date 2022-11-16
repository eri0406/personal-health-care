require 'test_helper'

class ManegementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manegements_index_url
    assert_response :success
  end

end
