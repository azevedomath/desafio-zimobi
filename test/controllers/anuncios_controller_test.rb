require 'test_helper'

class AnunciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anuncio = anuncios(:one)
  end

  test "should get index" do
    get anuncios_url
    assert_response :success
  end

  test "should get new" do
    get new_anuncio_url
    assert_response :success
  end

  test "should create anuncio" do
    assert_difference('Anuncio.count') do
      post anuncios_url, params: { anuncio: { description: @anuncio.description, price: @anuncio.price, title: @anuncio.title } }
    end

    assert_redirected_to anuncio_url(Anuncio.last)
  end

  test "should show anuncio" do
    get anuncio_url(@anuncio)
    assert_response :success
  end

  test "should get edit" do
    get edit_anuncio_url(@anuncio)
    assert_response :success
  end

  test "should update anuncio" do
    patch anuncio_url(@anuncio), params: { anuncio: { description: @anuncio.description, price: @anuncio.price, title: @anuncio.title } }
    assert_redirected_to anuncio_url(@anuncio)
  end

  test "should destroy anuncio" do
    assert_difference('Anuncio.count', -1) do
      delete anuncio_url(@anuncio)
    end

    assert_redirected_to anuncios_url
  end
end
