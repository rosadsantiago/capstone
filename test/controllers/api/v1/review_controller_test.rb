require 'test_helper'

class Api::V1::ReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_review_index_url
    assert_response :success
  end

end
