require "application_system_test_case"

class NoticiaTest < ApplicationSystemTestCase
  setup do
    @noticium = noticia(:one)
  end

  test "visiting the index" do
    visit noticia_url
    assert_selector "h1", text: "Noticia"
  end

  test "creating a Noticium" do
    visit noticia_url
    click_on "New Noticium"

    fill_in "Cuerpo", with: @noticium.cuerpo
    fill_in "Title", with: @noticium.title
    click_on "Create Noticium"

    assert_text "Noticium was successfully created"
    click_on "Back"
  end

  test "updating a Noticium" do
    visit noticia_url
    click_on "Edit", match: :first

    fill_in "Cuerpo", with: @noticium.cuerpo
    fill_in "Title", with: @noticium.title
    click_on "Update Noticium"

    assert_text "Noticium was successfully updated"
    click_on "Back"
  end

  test "destroying a Noticium" do
    visit noticia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Noticium was successfully destroyed"
  end
end
