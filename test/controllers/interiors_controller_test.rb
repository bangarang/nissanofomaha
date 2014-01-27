require 'test_helper'

class InteriorsControllerTest < ActionController::TestCase
  setup do
    @interior = interiors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interiors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interior" do
    assert_difference('Interior.count') do
      post :create, interior: { name: @interior.name }
    end

    assert_redirected_to interior_path(assigns(:interior))
  end

  test "should show interior" do
    get :show, id: @interior
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interior
    assert_response :success
  end

  test "should update interior" do
    patch :update, id: @interior, interior: { name: @interior.name }
    assert_redirected_to interior_path(assigns(:interior))
  end

  test "should destroy interior" do
    assert_difference('Interior.count', -1) do
      delete :destroy, id: @interior
    end

    assert_redirected_to interiors_path
  end
end
