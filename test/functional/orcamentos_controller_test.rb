require 'test_helper'

class OrcamentosControllerTest < ActionController::TestCase
  setup do
    @orcamento = orcamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orcamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orcamento" do
    assert_difference('Orcamento.count') do
      post :create, orcamento: { cli_contacto: @orcamento.cli_contacto, cli_morada: @orcamento.cli_morada, cli_nome: @orcamento.cli_nome, descricao: @orcamento.descricao, distancia: @orcamento.distancia, local: @orcamento.local }
    end

    assert_redirected_to orcamento_path(assigns(:orcamento))
  end

  test "should show orcamento" do
    get :show, id: @orcamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orcamento
    assert_response :success
  end

  test "should update orcamento" do
    put :update, id: @orcamento, orcamento: { cli_contacto: @orcamento.cli_contacto, cli_morada: @orcamento.cli_morada, cli_nome: @orcamento.cli_nome, descricao: @orcamento.descricao, distancia: @orcamento.distancia, local: @orcamento.local }
    assert_redirected_to orcamento_path(assigns(:orcamento))
  end

  test "should destroy orcamento" do
    assert_difference('Orcamento.count', -1) do
      delete :destroy, id: @orcamento
    end

    assert_redirected_to orcamentos_path
  end
end
