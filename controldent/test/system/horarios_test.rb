require "application_system_test_case"

class HorariosTest < ApplicationSystemTestCase
  setup do
    @horario = horarios(:one)
  end

  test "visiting the index" do
    visit horarios_url
    assert_selector "h1", text: "Horarios"
  end

  test "creating a Horario" do
    visit horarios_url
    click_on "New Horario"

    fill_in "Box", with: @horario.box
    fill_in "Centro", with: @horario.centro_id
    fill_in "Hentrada", with: @horario.hentrada
    fill_in "Hsalida", with: @horario.hsalida
    fill_in "Profesional", with: @horario.profesional_id
    fill_in "Rutayuda", with: @horario.rutayuda
    click_on "Create Horario"

    assert_text "Horario was successfully created"
    click_on "Back"
  end

  test "updating a Horario" do
    visit horarios_url
    click_on "Edit", match: :first

    fill_in "Box", with: @horario.box
    fill_in "Centro", with: @horario.centro_id
    fill_in "Hentrada", with: @horario.hentrada
    fill_in "Hsalida", with: @horario.hsalida
    fill_in "Profesional", with: @horario.profesional_id
    fill_in "Rutayuda", with: @horario.rutayuda
    click_on "Update Horario"

    assert_text "Horario was successfully updated"
    click_on "Back"
  end

  test "destroying a Horario" do
    visit horarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Horario was successfully destroyed"
  end
end
