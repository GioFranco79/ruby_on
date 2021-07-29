require "test_helper"

class EdicionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @edicion = edicions(:one)
  end

  test "should get index" do
    get edicions_url
    assert_response :success
  end

  test "should get new" do
    get new_edicion_url
    assert_response :success
  end

  test "should create edicion" do
    assert_difference('Edicion.count') do
      post edicions_url, params: { edicion: { autor_id: @edicion.autor_id, fechad: @edicion.fechad, libro_id: @edicion.libro_id } }
    end

    assert_redirected_to edicion_url(Edicion.last)
  end

  test "should show edicion" do
    get edicion_url(@edicion)
    assert_response :success
  end

  test "should get edit" do
    get edit_edicion_url(@edicion)
    assert_response :success
  end

  test "should update edicion" do
    patch edicion_url(@edicion), params: { edicion: { autor_id: @edicion.autor_id, fechad: @edicion.fechad, libro_id: @edicion.libro_id } }
    assert_redirected_to edicion_url(@edicion)
  end

  test "should destroy edicion" do
    assert_difference('Edicion.count', -1) do
      delete edicion_url(@edicion)
    end

    assert_redirected_to edicions_url
  end
end
