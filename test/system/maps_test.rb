require "application_system_test_case"

class MapsTest < ApplicationSystemTestCase
  setup do
    @map = maps(:one)
  end

  test "visiting the index" do
    visit maps_url
    assert_selector "h1", text: "Maps"
  end

  test "creating a Map" do
    visit maps_url
    click_on "New Map"

    fill_in "Age", with: @map.age
    fill_in "Alt", with: @map.alt
    fill_in "Geoidal", with: @map.geoidal
    fill_in "Hdop", with: @map.hdop
    check "Is valid" if @map.is_valid
    fill_in "Lat", with: @map.lat
    fill_in "Lon", with: @map.lon
    fill_in "Quality", with: @map.quality
    fill_in "Raw", with: @map.raw
    fill_in "Satellites", with: @map.satellites
    fill_in "Stationid", with: @map.stationID
    fill_in "Time", with: @map.time
    fill_in "Type", with: @map.type
    click_on "Create Map"

    assert_text "Map was successfully created"
    click_on "Back"
  end

  test "updating a Map" do
    visit maps_url
    click_on "Edit", match: :first

    fill_in "Age", with: @map.age
    fill_in "Alt", with: @map.alt
    fill_in "Geoidal", with: @map.geoidal
    fill_in "Hdop", with: @map.hdop
    check "Is valid" if @map.is_valid
    fill_in "Lat", with: @map.lat
    fill_in "Lon", with: @map.lon
    fill_in "Quality", with: @map.quality
    fill_in "Raw", with: @map.raw
    fill_in "Satellites", with: @map.satellites
    fill_in "Stationid", with: @map.stationID
    fill_in "Time", with: @map.time
    fill_in "Type", with: @map.type
    click_on "Update Map"

    assert_text "Map was successfully updated"
    click_on "Back"
  end

  test "destroying a Map" do
    visit maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Map was successfully destroyed"
  end
end
