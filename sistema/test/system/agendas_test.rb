require "application_system_test_case"

class AgendasTest < ApplicationSystemTestCase
  setup do
    @agenda = agendas(:one)
  end

  test "visiting the index" do
    visit agendas_url
    assert_selector "h1", text: "Agendas"
  end

  test "creating a Agenda" do
    visit agendas_url
    click_on "New Agenda"

    fill_in "Box", with: @agenda.box
    fill_in "Fagenda", with: @agenda.fagenda
    fill_in "Horario", with: @agenda.horario_id
    fill_in "Paciente", with: @agenda.paciente_id
    fill_in "Profesional", with: @agenda.profesional_id
    click_on "Create Agenda"

    assert_text "Agenda was successfully created"
    click_on "Back"
  end

  test "updating a Agenda" do
    visit agendas_url
    click_on "Edit", match: :first

    fill_in "Box", with: @agenda.box
    fill_in "Fagenda", with: @agenda.fagenda
    fill_in "Horario", with: @agenda.horario_id
    fill_in "Paciente", with: @agenda.paciente_id
    fill_in "Profesional", with: @agenda.profesional_id
    click_on "Update Agenda"

    assert_text "Agenda was successfully updated"
    click_on "Back"
  end

  test "destroying a Agenda" do
    visit agendas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agenda was successfully destroyed"
  end
end
