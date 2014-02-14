require 'test_helper'

class NewOrderTest < ActionDispatch::IntegrationTest
  fixtures :users

  test "new order" do
    get "/users/sign_in"
    assert_response :success

  end
end
