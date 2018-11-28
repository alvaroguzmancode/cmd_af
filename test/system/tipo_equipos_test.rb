require "application_system_test_case"

class TipoEquiposTest < ApplicationSystemTestCase
  setup do
    @tipo_equipo = tipo_equipos(:one)
  end

  test "visiting the index" do
    visit tipo_equipos_url
    assert_selector "h1", text: "Tipo Equipos"
  end

  test "creating a Tipo equipo" do
    visit tipo_equipos_url
    click_on "New Tipo Equipo"

    fill_in "Descripcion", with: @tipo_equipo.descripcion
    click_on "Create Tipo equipo"

    assert_text "Tipo equipo was successfully created"
    click_on "Back"
  end

  test "updating a Tipo equipo" do
    visit tipo_equipos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tipo_equipo.descripcion
    click_on "Update Tipo equipo"

    assert_text "Tipo equipo was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo equipo" do
    visit tipo_equipos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo equipo was successfully destroyed"
  end
end
