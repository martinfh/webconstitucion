require 'test_helper'

class ExposicionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exposicion = exposicions(:one)
  end

  test "should get index" do
    get exposicions_url
    assert_response :success
  end

  test "should get new" do
    get new_exposicion_url
    assert_response :success
  end

  test "should create exposicion" do
    assert_difference('Exposicion.count') do
      post exposicions_url, params: { exposicion: { fechas: @exposicion.fechas, imagenes_expo: @exposicion.imagenes_expo, texto: @exposicion.texto, titulo_expo: @exposicion.titulo_expo } }
    end

    assert_redirected_to exposicion_url(Exposicion.last)
  end

  test "should show exposicion" do
    get exposicion_url(@exposicion)
    assert_response :success
  end

  test "should get edit" do
    get edit_exposicion_url(@exposicion)
    assert_response :success
  end

  test "should update exposicion" do
    patch exposicion_url(@exposicion), params: { exposicion: { fechas: @exposicion.fechas, imagenes_expo: @exposicion.imagenes_expo, texto: @exposicion.texto, titulo_expo: @exposicion.titulo_expo } }
    assert_redirected_to exposicion_url(@exposicion)
  end

  test "should destroy exposicion" do
    assert_difference('Exposicion.count', -1) do
      delete exposicion_url(@exposicion)
    end

    assert_redirected_to exposicions_url
  end
end
