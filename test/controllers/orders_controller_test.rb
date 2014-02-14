require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  fixtures :users,:semesters,:orders
  # work still in progress
=begin
  setup do
    # get a user and sign in
    @user = users(:one)
    sign_in @user
    # get an order and assign it to the user
    @order = orders(:one)
    @order.user_id = @user.id
    # get semester and add it to the order
    @semester = semesters(:one)
    @order.semester = @semester
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end


  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: {  }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
=end
end
