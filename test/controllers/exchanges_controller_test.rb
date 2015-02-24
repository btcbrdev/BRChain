require 'test_helper'

class ExchangesControllerTest < ActionController::TestCase
  setup do
    @exchange = exchanges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exchanges)
  end

  test "should create exchange" do
    assert_difference('Exchange.count') do
      post :create, exchange: { documentation_url: @exchange.documentation_url, home_url: @exchange.home_url, name: @exchange.name }
    end

    assert_response 201
  end

  test "should show exchange" do
    get :show, id: @exchange
    assert_response :success
  end

  test "should update exchange" do
    put :update, id: @exchange, exchange: { documentation_url: @exchange.documentation_url, home_url: @exchange.home_url, name: @exchange.name }
    assert_response 204
  end

  test "should destroy exchange" do
    assert_difference('Exchange.count', -1) do
      delete :destroy, id: @exchange
    end

    assert_response 204
  end
end
