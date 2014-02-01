require 'test_helper'

class TestRidesControllerTest < ActionController::TestCase
  setup do
    @test_ride = test_rides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_rides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_ride" do
    assert_difference('TestRide.count') do
      post :create, test_ride: { afternoon: @test_ride.afternoon, comments: @test_ride.comments, email: @test_ride.email, evening: @test_ride.evening, first: @test_ride.first, last: @test_ride.last, method_email: @test_ride.method_email, method_phone: @test_ride.method_phone, morning: @test_ride.morning, phone: @test_ride.phone }
    end

    assert_redirected_to test_ride_path(assigns(:test_ride))
  end

  test "should show test_ride" do
    get :show, id: @test_ride
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_ride
    assert_response :success
  end

  test "should update test_ride" do
    patch :update, id: @test_ride, test_ride: { afternoon: @test_ride.afternoon, comments: @test_ride.comments, email: @test_ride.email, evening: @test_ride.evening, first: @test_ride.first, last: @test_ride.last, method_email: @test_ride.method_email, method_phone: @test_ride.method_phone, morning: @test_ride.morning, phone: @test_ride.phone }
    assert_redirected_to test_ride_path(assigns(:test_ride))
  end

  test "should destroy test_ride" do
    assert_difference('TestRide.count', -1) do
      delete :destroy, id: @test_ride
    end

    assert_redirected_to test_rides_path
  end
end
