require 'test_helper'

class NewVehiclesControllerTest < ActionController::TestCase
  setup do
    @new_vehicle = new_vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_vehicle" do
    assert_difference('NewVehicle.count') do
      post :create, new_vehicle: { city_mpg: @new_vehicle.city_mpg, description: @new_vehicle.description, highway_mpg: @new_vehicle.highway_mpg, name: @new_vehicle.name }
    end

    assert_redirected_to new_vehicle_path(assigns(:new_vehicle))
  end

  test "should show new_vehicle" do
    get :show, id: @new_vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_vehicle
    assert_response :success
  end

  test "should update new_vehicle" do
    patch :update, id: @new_vehicle, new_vehicle: { city_mpg: @new_vehicle.city_mpg, description: @new_vehicle.description, highway_mpg: @new_vehicle.highway_mpg, name: @new_vehicle.name }
    assert_redirected_to new_vehicle_path(assigns(:new_vehicle))
  end

  test "should destroy new_vehicle" do
    assert_difference('NewVehicle.count', -1) do
      delete :destroy, id: @new_vehicle
    end

    assert_redirected_to new_vehicles_path
  end
end
