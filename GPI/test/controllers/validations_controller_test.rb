require 'test_helper'

class ValidationsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get validations_login_url
    assert_response :success
  end

end
