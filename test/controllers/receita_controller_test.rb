require 'test_helper'

class ReceitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receita = receita(:one)
  end

  test "should get index" do
    get receita_url
    assert_response :success
  end

  test "should get new" do
    get new_receita_url
    assert_response :success
  end

  test "should create receita" do
    assert_difference('receita.count') do
      post receita_url, params: { receita: { dtreceita: @receita.dtreceita, tipo_receita_id: @receita.tipo_receita_id, valor: @receita.valor } }
    end

    assert_redirected_to receita_url(receita.last)
  end

  test "should show receita" do
    get receita_url(@receita)
    assert_response :success
  end

  test "should get edit" do
    get edit_receita_url(@receita)
    assert_response :success
  end

  test "should update receita" do
    patch receita_url(@receita), params: { receita: { dtreceita: @receita.dtreceita, tipo_receita_id: @receita.tipo_receita_id, valor: @receita.valor } }
    assert_redirected_to receita_url(@receita)
  end

  test "should destroy receita" do
    assert_difference('receita.count', -1) do
      delete receita_url(@receita)
    end

    assert_redirected_to receita_url
  end
end
