require "application_system_test_case"

class FairsTest < ApplicationSystemTestCase
  setup do
    @fair = fairs(:one)
  end

  test "visiting the index" do
    visit fairs_url
    assert_selector "h1", text: "Fairs"
  end

  test "creating a Fair" do
    visit fairs_url
    click_on "New Fair"

    fill_in "Flyer", with: @fair.flyer
    fill_in "Nombre", with: @fair.nombre
    click_on "Create Fair"

    assert_text "Fair was successfully created"
    click_on "Back"
  end

  test "updating a Fair" do
    visit fairs_url
    click_on "Edit", match: :first

    fill_in "Flyer", with: @fair.flyer
    fill_in "Nombre", with: @fair.nombre
    click_on "Update Fair"

    assert_text "Fair was successfully updated"
    click_on "Back"
  end

  test "destroying a Fair" do
    visit fairs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fair was successfully destroyed"
  end
end
