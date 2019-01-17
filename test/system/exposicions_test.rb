require "application_system_test_case"

class ExposicionsTest < ApplicationSystemTestCase
  setup do
    @exposicion = exposicions(:one)
  end

  test "visiting the index" do
    visit exposicions_url
    assert_selector "h1", text: "Exposicions"
  end

  test "creating a Exposicion" do
    visit exposicions_url
    click_on "New Exposicion"

    fill_in "Fechas", with: @exposicion.fechas
    fill_in "Imagenes Expo", with: @exposicion.imagenes_expo
    fill_in "Texto", with: @exposicion.texto
    fill_in "Titulo Expo", with: @exposicion.titulo_expo
    click_on "Create Exposicion"

    assert_text "Exposicion was successfully created"
    click_on "Back"
  end

  test "updating a Exposicion" do
    visit exposicions_url
    click_on "Edit", match: :first

    fill_in "Fechas", with: @exposicion.fechas
    fill_in "Imagenes Expo", with: @exposicion.imagenes_expo
    fill_in "Texto", with: @exposicion.texto
    fill_in "Titulo Expo", with: @exposicion.titulo_expo
    click_on "Update Exposicion"

    assert_text "Exposicion was successfully updated"
    click_on "Back"
  end

  test "destroying a Exposicion" do
    visit exposicions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exposicion was successfully destroyed"
  end
end
