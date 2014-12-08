require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get busca" do
    get :busca
    assert_response :success
  end

end
