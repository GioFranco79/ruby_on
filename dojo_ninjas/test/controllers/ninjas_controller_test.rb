require "test_helper"

class NinjasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ninja = ninjas(:one)
  end

  test "should get index" do
    get ninjas_url
    assert_response :success
  end

  test "should get new" do
    get new_ninja_url
    assert_response :success
  end

  test "should create ninja" do
    assert_difference('Ninja.count') do
      post ninjas_url, params: { ninja: { apellido: @ninja.apellido, dojo_id: @ninja.dojo_id, nombre: @ninja.nombre } }
    end

    assert_redirected_to ninja_url(Ninja.last)
  end

  test "should show ninja" do
    get ninja_url(@ninja)
    assert_response :success
  end

  test "should get edit" do
    get edit_ninja_url(@ninja)
    assert_response :success
  end

  test "should update ninja" do
    patch ninja_url(@ninja), params: { ninja: { apellido: @ninja.apellido, dojo_id: @ninja.dojo_id, nombre: @ninja.nombre } }
    assert_redirected_to ninja_url(@ninja)
  end

  test "should destroy ninja" do
    assert_difference('Ninja.count', -1) do
      delete ninja_url(@ninja)
    end

    assert_redirected_to ninjas_url
  end
end
