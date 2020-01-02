require 'test_helper'

class GPsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gp = gps(:one)
  end

  test "should get index" do
    get gps_index_url
    assert_response :success
  end

  test "should get new" do
    get new_gp_url
    assert_response :success
  end

  test "should create gp" do
    assert_difference('Gps.count') do
      post gps_index_url, params: { gp: { age: @gp.age, alt: @gp.alt, geoidal: @gp.geoidal, hdop: @gp.hdop, lat: @gp.lat, lon: @gp.lon, quality: @gp.quality, raw: @gp.raw, satellites: @gp.satellites, stationID: @gp.stationID, time: @gp.time, type: @gp.type, valid: @gp.valid } }
    end

    assert_redirected_to gp_url(Gps.last)
  end

  test "should show gp" do
    get gp_url(@gp)
    assert_response :success
  end

  test "should get edit" do
    get edit_gp_url(@gp)
    assert_response :success
  end

  test "should update gp" do
    patch gp_url(@gp), params: { gp: { age: @gp.age, alt: @gp.alt, geoidal: @gp.geoidal, hdop: @gp.hdop, lat: @gp.lat, lon: @gp.lon, quality: @gp.quality, raw: @gp.raw, satellites: @gp.satellites, stationID: @gp.stationID, time: @gp.time, type: @gp.type, valid: @gp.valid } }
    assert_redirected_to gp_url(@gp)
  end

  test "should destroy gp" do
    assert_difference('Gps.count', -1) do
      delete gp_url(@gp)
    end

    assert_redirected_to gps_index_url
  end
end
