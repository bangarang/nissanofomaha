require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  setup do
    @photo = photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo" do
    assert_difference('Photo.count') do
      post :create, photo: { exterior_id: @photo.exterior_id, image: @photo.image, interior_id: @photo.interior_id }
    end

    assert_redirected_to photo_path(assigns(:photo))
  end

  test "should show photo" do
    get :show, id: @photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo
    assert_response :success
  end

  test "should update photo" do
    patch :update, id: @photo, photo: { exterior_id: @photo.exterior_id, image: @photo.image, interior_id: @photo.interior_id }
    assert_redirected_to photo_path(assigns(:photo))
  end

  test "should destroy photo" do
    assert_difference('Photo.count', -1) do
      delete :destroy, id: @photo
    end

    assert_redirected_to photos_path
  end
end
