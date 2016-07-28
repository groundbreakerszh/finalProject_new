require 'test_helper'

class CitiesToWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cities_to_work = cities_to_works(:one)
  end

  test "should get index" do
    get cities_to_works_url
    assert_response :success
  end

  test "should get new" do
    get new_cities_to_work_url
    assert_response :success
  end

  test "should create cities_to_work" do
    assert_difference('CitiesToWork.count') do
      post cities_to_works_url, params: { cities_to_work: { city: @cities_to_work.city } }
    end

    assert_redirected_to cities_to_work_url(CitiesToWork.last)
  end

  test "should show cities_to_work" do
    get cities_to_work_url(@cities_to_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_cities_to_work_url(@cities_to_work)
    assert_response :success
  end

  test "should update cities_to_work" do
    patch cities_to_work_url(@cities_to_work), params: { cities_to_work: { city: @cities_to_work.city } }
    assert_redirected_to cities_to_work_url(@cities_to_work)
  end

  test "should destroy cities_to_work" do
    assert_difference('CitiesToWork.count', -1) do
      delete cities_to_work_url(@cities_to_work)
    end

    assert_redirected_to cities_to_works_url
  end
end
