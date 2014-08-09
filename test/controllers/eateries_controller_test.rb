require 'test_helper'

class EateriesControllerTest < ActionController::TestCase
  setup do
    @eatery = eateries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eateries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eatery" do
    assert_difference('Eatery.count') do
      post :create, eatery: { address: @eatery.address, cost: @eatery.cost, delivery: @eatery.delivery, drive_thru: @eatery.drive_thru, hours: @eatery.hours, image_url: @eatery.image_url, lat_long: @eatery.lat_long, market: @eatery.market, name: @eatery.name, phone_num: @eatery.phone_num, pop_items: @eatery.pop_items, rating: @eatery.rating, reviews: @eatery.reviews, type_food: @eatery.type_food, website: @eatery.website }
    end

    assert_redirected_to eatery_path(assigns(:eatery))
  end

  test "should show eatery" do
    get :show, id: @eatery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eatery
    assert_response :success
  end

  test "should update eatery" do
    patch :update, id: @eatery, eatery: { address: @eatery.address, cost: @eatery.cost, delivery: @eatery.delivery, drive_thru: @eatery.drive_thru, hours: @eatery.hours, image_url: @eatery.image_url, lat_long: @eatery.lat_long, market: @eatery.market, name: @eatery.name, phone_num: @eatery.phone_num, pop_items: @eatery.pop_items, rating: @eatery.rating, reviews: @eatery.reviews, type_food: @eatery.type_food, website: @eatery.website }
    assert_redirected_to eatery_path(assigns(:eatery))
  end

  test "should destroy eatery" do
    assert_difference('Eatery.count', -1) do
      delete :destroy, id: @eatery
    end

    assert_redirected_to eateries_path
  end
end
