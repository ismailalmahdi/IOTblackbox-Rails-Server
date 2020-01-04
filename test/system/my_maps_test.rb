require "application_system_test_case"

class MyMapsTest < ApplicationSystemTestCase
  setup do
    @my_map = my_maps(:one)
  end

  test "visiting the index" do
    visit my_maps_url
    assert_selector "h1", text: "My Maps"
  end

  test "creating a My map" do
    visit my_maps_url
    click_on "New My Map"

    fill_in "Testing", with: @my_map.testing
    click_on "Create My map"

    assert_text "My map was successfully created"
    click_on "Back"
  end

  test "updating a My map" do
    visit my_maps_url
    click_on "Edit", match: :first

    fill_in "Testing", with: @my_map.testing
    click_on "Update My map"

    assert_text "My map was successfully updated"
    click_on "Back"
  end

  test "destroying a My map" do
    visit my_maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My map was successfully destroyed"
  end
end
