require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "creating a Cliente" do
    visit clientes_url
    click_on "New Cliente"

    fill_in "Ciudad", with: @cliente.ciudad
    fill_in "Comuna", with: @cliente.comuna
    fill_in "Direccion", with: @cliente.direccion
    fill_in "Email", with: @cliente.email
    fill_in "Fono", with: @cliente.fono
    fill_in "Logo", with: @cliente.logo
    fill_in "Razon", with: @cliente.razon
    fill_in "Representante", with: @cliente.representante
    fill_in "Rut", with: @cliente.rut
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "updating a Cliente" do
    visit clientes_url
    click_on "Edit", match: :first

    fill_in "Ciudad", with: @cliente.ciudad
    fill_in "Comuna", with: @cliente.comuna
    fill_in "Direccion", with: @cliente.direccion
    fill_in "Email", with: @cliente.email
    fill_in "Fono", with: @cliente.fono
    fill_in "Logo", with: @cliente.logo
    fill_in "Razon", with: @cliente.razon
    fill_in "Representante", with: @cliente.representante
    fill_in "Rut", with: @cliente.rut
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Cliente" do
    visit clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cliente was successfully destroyed"
  end
end
