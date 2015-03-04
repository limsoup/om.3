require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
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

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { complete: @order.complete, customer_address: @order.customer_address, customer_name: @order.customer_name, customer_phone: @order.customer_phone, driver_name: @order.driver_name, order_details: @order.order_details, restaurant_address: @order.restaurant_address, restaurant_name: @order.restaurant_name, status: @order.status, total_after_fee: @order.total_after_fee, total_before_fee: @order.total_before_fee }
    end

    assert_redirected_to order_path(assigns(:order))
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
    patch :update, id: @order, order: { complete: @order.complete, customer_address: @order.customer_address, customer_name: @order.customer_name, customer_phone: @order.customer_phone, driver_name: @order.driver_name, order_details: @order.order_details, restaurant_address: @order.restaurant_address, restaurant_name: @order.restaurant_name, status: @order.status, total_after_fee: @order.total_after_fee, total_before_fee: @order.total_before_fee }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
