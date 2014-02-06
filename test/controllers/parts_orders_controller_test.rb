require 'test_helper'

class PartsOrdersControllerTest < ActionController::TestCase
  setup do
    @parts_order = parts_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parts_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parts_order" do
    assert_difference('PartsOrder.count') do
      post :create, parts_order: { comments: @parts_order.comments, email: @parts_order.email, make: @parts_order.make, model: @parts_order.model, name: @parts_order.name, phone: @parts_order.phone, vin: @parts_order.vin, year: @parts_order.year, zip: @parts_order.zip }
    end

    assert_redirected_to parts_order_path(assigns(:parts_order))
  end

  test "should show parts_order" do
    get :show, id: @parts_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parts_order
    assert_response :success
  end

  test "should update parts_order" do
    patch :update, id: @parts_order, parts_order: { comments: @parts_order.comments, email: @parts_order.email, make: @parts_order.make, model: @parts_order.model, name: @parts_order.name, phone: @parts_order.phone, vin: @parts_order.vin, year: @parts_order.year, zip: @parts_order.zip }
    assert_redirected_to parts_order_path(assigns(:parts_order))
  end

  test "should destroy parts_order" do
    assert_difference('PartsOrder.count', -1) do
      delete :destroy, id: @parts_order
    end

    assert_redirected_to parts_orders_path
  end
end
