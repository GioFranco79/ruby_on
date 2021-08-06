require "application_system_test_case"

class PacientesTest < ApplicationSystemTestCase
  setup do
    @paciente = pacientes(:one)
  end

  test "visiting the index" do
    visit pacientes_url
    assert_selector "h1", text: "Pacientes"
  end

  test "creating a Paciente" do
    visit pacientes_url
    click_on "New Paciente"

    fill_in "Apellido", with: @paciente.apellido
    fill_in "Email", with: @paciente.email
    fill_in "Fechanac", with: @paciente.fechanac
    fill_in "Fono", with: @paciente.fono
    fill_in "Nombre", with: @paciente.nombre
    fill_in "Prevision", with: @paciente.prevision
    fill_in "Rut", with: @paciente.rut
    click_on "Create Paciente"

    assert_text "Paciente was successfully created"
    click_on "Back"
  end

  test "updating a Paciente" do
    visit pacientes_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @paciente.apellido
    fill_in "Email", with: @paciente.email
    fill_in "Fechanac", with: @paciente.fechanac
    fill_in "Fono", with: @paciente.fono
    fill_in "Nombre", with: @paciente.nombre
    fill_in "Prevision", with: @paciente.prevision
    fill_in "Rut", with: @paciente.rut
    click_on "Update Paciente"

    assert_text "Paciente was successfully updated"
    click_on "Back"
  end

  test "destroying a Paciente" do
    visit pacientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paciente was successfully destroyed"
  end
end
