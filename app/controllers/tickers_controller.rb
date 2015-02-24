# class TickersController < ApplicationController
#   before_action :set_ticker, only: [:show, :update, :destroy]

#   # GET /tickers
#   # GET /tickers.json
#   def index
#     @tickers = Ticker.all

#     render json: @tickers
#   end

#   # GET /tickers/1
#   # GET /tickers/1.json
#   def show
#     render json: @ticker
#   end

#   # POST /tickers
#   # POST /tickers.json
#   def create
#     @ticker = Ticker.new(ticker_params)

#     if @ticker.save
#       render json: @ticker, status: :created, location: @ticker
#     else
#       render json: @ticker.errors, status: :unprocessable_entity
#     end
#   end

#   # PATCH/PUT /tickers/1
#   # PATCH/PUT /tickers/1.json
#   def update
#     @ticker = Ticker.find(params[:id])

#     if @ticker.update(ticker_params)
#       head :no_content
#     else
#       render json: @ticker.errors, status: :unprocessable_entity
#     end
#   end

#   # DELETE /tickers/1
#   # DELETE /tickers/1.json
#   def destroy
#     @ticker.destroy

#     head :no_content
#   end

#   private

#     def set_ticker
#       @ticker = Ticker.find(params[:id])
#     end

#     def ticker_params
#       params.require(:ticker).permit(:url, :high, :low, :last, :volume, :buy, :sell)
#     end
# end
