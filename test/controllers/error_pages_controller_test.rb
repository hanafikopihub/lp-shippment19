require 'test_helper'

class ErrorPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get error_pages_index_url
    assert_response :success
  end

end
