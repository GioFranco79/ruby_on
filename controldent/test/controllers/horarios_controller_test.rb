require "test_helper"

class HorariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horario = horarios(:one)
  end

  test "should get index" do
    get horarios_url
    assert_response :success
  end

  test "should get new" do
    get new_horario_url
    assert_response :success
  end

  test "should create horario" do
    assert_difference('Horario.count') do
      post horarios_url, params: { horario: { box: @horario.box, centro_id: @horario.centro_id, hentrada: @horario.hentrada, hsalida: @horario.hsalida, profesional_id: @horario.profesional_id, rutayuda: @horario.rutayuda } }
    end

    assert_redirected_to horario_url(Horario.last)
  end

  test "should show horario" do
    get horario_url(@horario)
    assert_response :success
  end

  test "should get edit" do
    get edit_horario_url(@horario)
    assert_response :success
  end

  test "should update horario" do
    patch horario_url(@horario), params: { horario: { box: @horario.box, centro_id: @horario.centro_id, hentrada: @horario.hentrada, hsalida: @horario.hsalida, profesional_id: @horario.profesional_id, rutayuda: @horario.rutayuda } }
    assert_redirected_to horario_url(@horario)
  end

  test "should destroy horario" do
    assert_difference('Horario.count', -1) do
      delete horario_url(@horario)
    end

    assert_redirected_to horarios_url
  end
end