require "application_system_test_case"

class GpsTest < ApplicationSystemTestCase
  setup do
    @gp = gps(:one)
  end

  test "visiting the index" do
    visit gps_url
    assert_selector "h1", text: "Gps"
  end

  test "creating a Gps" do
    visit gps_url
    click_on "New Gps"

    fill_in "Age", with: @gp.age
    fill_in "Alt", with: @gp.alt
    fill_in "Geoidal", with: @gp.geoidal
    fill_in "Hdop", with: @gp.hdop
    fill_in "Lat", with: @gp.lat
    fill_in "Lon", with: @gp.lon
    fill_in "Quality", with: @gp.quality
    fill_in "Raw", with: @gp.raw
    fill_in "Satellites", with: @gp.satellites
    fill_in "Stationid", with: @gp.stationID
    fill_in "Time", with: @gp.time
    fill_in "Type", with: @gp.type
    check "Valid" if @gp.valid
    click_on "Create Gps"

    assert_text "Gps was successfully created"
    click_on "Back"
  end

  test "updating a Gps" do
    visit gps_url
    click_on "Edit", match: :first

    fill_in "Age", with: @gp.age
    fill_in "Alt", with: @gp.alt
    fill_in "Geoidal", with: @gp.geoidal
    fill_in "Hdop", with: @gp.hdop
    fill_in "Lat", with: @gp.lat
    fill_in "Lon", with: @gp.lon
    fill_in "Quality", with: @gp.quality
    fill_in "Raw", with: @gp.raw
    fill_in "Satellites", with: @gp.satellites
    fill_in "Stationid", with: @gp.stationID
    fill_in "Time", with: @gp.time
    fill_in "Type", with: @gp.type
    check "Valid" if @gp.valid
    click_on "Update Gps"

    assert_text "Gps was successfully updated"
    click_on "Back"
  end

  test "destroying a Gps" do
    visit gps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gps was successfully destroyed"
  end
end
