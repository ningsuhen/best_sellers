require 'test_helper'

class DailyPurchasesControllerTest < ActionController::TestCase
  setup do
    @daily_purchase = daily_purchases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_purchases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_purchase" do
    assert_difference('DailyPurchase.count') do
      post :create, daily_purchase: { day: @daily_purchase.day, listing_id: @daily_purchase.listing_id }
    end

    assert_redirected_to daily_purchase_path(assigns(:daily_purchase))
  end

  test "should show daily_purchase" do
    get :show, id: @daily_purchase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_purchase
    assert_response :success
  end

  test "should update daily_purchase" do
    patch :update, id: @daily_purchase, daily_purchase: { day: @daily_purchase.day, listing_id: @daily_purchase.listing_id }
    assert_redirected_to daily_purchase_path(assigns(:daily_purchase))
  end

  test "should destroy daily_purchase" do
    assert_difference('DailyPurchase.count', -1) do
      delete :destroy, id: @daily_purchase
    end

    assert_redirected_to daily_purchases_path
  end
end
