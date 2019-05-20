require 'test_helper'

class TipoReceitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_receita = tipo_receita(:one)
  end

  test "should get index" do
    get tipo_receita_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_receita_url
    assert_response :success
  end

  test "should create tipo_receita" do
    assert_difference('Tiporeceita.count') do
      post tipo_receita_url, params: { tipo_receita: { descricao: @tipo_receita.descricao } }
    end

    assert_redirected_to tipo_receita_url(Tiporeceita.last)
  end

  test "should show tipo_receita" do
    get tipo_receita_url(@tipo_receita)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_receita_url(@tipo_receita)
    assert_response :success
  end

  test "should update tipo_receita" do
    patch tipo_receita_url(@tipo_receita), params: { tipo_receita: { descricao: @tipo_receita.descricao } }
    assert_redirected_to tipo_receita_url(@tipo_receita)
  end

  test "should destroy tipo_receita" do
    assert_difference('Tiporeceita.count', -1) do
      delete tipo_receita_url(@tipo_receita)
    end

    assert_redirected_to tipo_receita_url
  end
end
