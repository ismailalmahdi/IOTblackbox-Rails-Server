require 'test_helper'

class MyMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_map = my_maps(:one)
  end

  test "should get index" do
    get my_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_my_map_url
    assert_response :success
  end

  test "should create my_map" do
    assert_difference('MyMap.count') do
      post my_maps_url, params: { my_map: { testing: @my_map.testing } }
    end

    assert_redirected_to my_map_url(MyMap.last)
  end

  test "should show my_map" do
    get my_map_url(@my_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_map_url(@my_map)
    assert_response :success
  end

  test "should update my_map" do
    patch my_map_url(@my_map), params: { my_map: { testing: @my_map.testing } }
    assert_redirected_to my_map_url(@my_map)
  end

  test "should destroy my_map" do
    assert_difference('MyMap.count', -1) do
      delete my_map_url(@my_map)
    end

    assert_redirected_to my_maps_url
  end
end
