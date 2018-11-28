require "application_system_test_case"

class FabricantesTest < ApplicationSystemTestCase
  setup do
    @fabricante = fabricantes(:one)
  end

  test "visiting the index" do
    visit fabricantes_url
    assert_selector "h1", text: "Fabricantes"
  end

  test "creating a Fabricante" do
    visit fabricantes_url
    click_on "New Fabricante"

    fill_in "Descripcion", with: @fabricante.descripcion
    click_on "Create Fabricante"

    assert_text "Fabricante was successfully created"
    click_on "Back"
  end

  test "updating a Fabricante" do
    visit fabricantes_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @fabricante.descripcion
    click_on "Update Fabricante"

    assert_text "Fabricante was successfully updated"
    click_on "Back"
  end

  test "destroying a Fabricante" do
    visit fabricantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fabricante was successfully destroyed"
  end
end
