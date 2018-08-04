require 'test_helper'

class EjemploControllerTest < ActionDispatch::IntegrationTest
  test "should get forma" do
    get ejemplo_forma_url
    assert_response :success
  end

end
