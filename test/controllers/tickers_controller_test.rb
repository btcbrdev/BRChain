require 'test_helper'

class TickersControllerTest < ActionController::TestCase
  setup do
    @ticker = tickers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tickers)
  end

  test "should create ticker" do
    assert_difference('Ticker.count') do
      post :create, ticker: { buy: @ticker.buy, high: @ticker.high, last: @ticker.last, low: @ticker.low, sell: @ticker.sell, url: @ticker.url, volume: @ticker.volume }
    end

    assert_response 201
  end

  test "should show ticker" do
    get :show, id: @ticker
    assert_response :success
  end

  test "should update ticker" do
    put :update, id: @ticker, ticker: { buy: @ticker.buy, high: @ticker.high, last: @ticker.last, low: @ticker.low, sell: @ticker.sell, url: @ticker.url, volume: @ticker.volume }
    assert_response 204
  end

  test "should destroy ticker" do
    assert_difference('Ticker.count', -1) do
      delete :destroy, id: @ticker
    end

    assert_response 204
  end
end
