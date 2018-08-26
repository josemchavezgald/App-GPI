require 'test_helper'

class GuardadosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get guardados_new_url
    assert_response :success
  end

  test "should get indexBodega" do
    get guardados_indexBodega_url
    assert_response :success
  end

end
