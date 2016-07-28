require 'test_helper'

class TravelAmountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_amount = travel_amounts(:one)
  end

  test "should get index" do
    get travel_amounts_url
    assert_response :success
  end

  test "should get new" do
    get new_travel_amount_url
    assert_response :success
  end

  test "should create travel_amount" do
    assert_difference('TravelAmount.count') do
      post travel_amounts_url, params: { travel_amount: { travelamount: @travel_amount.travelamount } }
    end

    assert_redirected_to travel_amount_url(TravelAmount.last)
  end

  test "should show travel_amount" do
    get travel_amount_url(@travel_amount)
    assert_response :success
  end

  test "should get edit" do
    get edit_travel_amount_url(@travel_amount)
    assert_response :success
  end

  test "should update travel_amount" do
    patch travel_amount_url(@travel_amount), params: { travel_amount: { travelamount: @travel_amount.travelamount } }
    assert_redirected_to travel_amount_url(@travel_amount)
  end

  test "should destroy travel_amount" do
    assert_difference('TravelAmount.count', -1) do
      delete travel_amount_url(@travel_amount)
    end

    assert_redirected_to travel_amounts_url
  end
end
