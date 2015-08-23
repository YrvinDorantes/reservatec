require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place" do
    assert_difference('Place.count') do
      post :create, place: { capacity: @place.capacity, category_id: @place.category_id, cost: @place.cost, dayoff_id: @place.dayoff_id, description: @place.description, goods: @place.goods, latitude: @place.latitude, localization_id: @place.localization_id, longitude: @place.longitude, name: @place.name, role_id: @place.role_id, status: @place.status }
    end

    assert_redirected_to place_path(assigns(:place))
  end

  test "should show place" do
    get :show, id: @place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place
    assert_response :success
  end

  test "should update place" do
    patch :update, id: @place, place: { capacity: @place.capacity, category_id: @place.category_id, cost: @place.cost, dayoff_id: @place.dayoff_id, description: @place.description, goods: @place.goods, latitude: @place.latitude, localization_id: @place.localization_id, longitude: @place.longitude, name: @place.name, role_id: @place.role_id, status: @place.status }
    assert_redirected_to place_path(assigns(:place))
  end

  test "should destroy place" do
    assert_difference('Place.count', -1) do
      delete :destroy, id: @place
    end

    assert_redirected_to places_path
  end
end
