require "application_system_test_case"

class EdicionsTest < ApplicationSystemTestCase
  setup do
    @edicion = edicions(:one)
  end

  test "visiting the index" do
    visit edicions_url
    assert_selector "h1", text: "Edicions"
  end

  test "creating a Edicion" do
    visit edicions_url
    click_on "New Edicion"

    fill_in "Autor", with: @edicion.autor_id
    fill_in "Fechad", with: @edicion.fechad
    fill_in "Libro", with: @edicion.libro_id
    click_on "Create Edicion"

    assert_text "Edicion was successfully created"
    click_on "Back"
  end

  test "updating a Edicion" do
    visit edicions_url
    click_on "Edit", match: :first

    fill_in "Autor", with: @edicion.autor_id
    fill_in "Fechad", with: @edicion.fechad
    fill_in "Libro", with: @edicion.libro_id
    click_on "Update Edicion"

    assert_text "Edicion was successfully updated"
    click_on "Back"
  end

  test "destroying a Edicion" do
    visit edicions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Edicion was successfully destroyed"
  end
end
