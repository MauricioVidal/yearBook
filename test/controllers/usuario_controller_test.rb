require 'test_helper'

class UsuarioControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
