# class ExchangesController < ApplicationController
#   before_action :set_exchange, only: [:show, :update, :destroy]

#   # GET /exchanges
#   # GET /exchanges.json
#   def index
#     @exchanges = Exchange.all

#     render json: @exchanges
#   end

#   # GET /exchanges/1
#   # GET /exchanges/1.json
#   def show
#     render json: @exchange
#   end

#   # POST /exchanges
#   # POST /exchanges.json
#   def create
#     @exchange = Exchange.new(exchange_params)

#     if @exchange.save
#       render json: @exchange, status: :created, location: @exchange
#     else
#       render json: @exchange.errors, status: :unprocessable_entity
#     end
#   end

#   # PATCH/PUT /exchanges/1
#   # PATCH/PUT /exchanges/1.json
#   def update
#     @exchange = Exchange.find(params[:id])

#     if @exchange.update(exchange_params)
#       head :no_content
#     else
#       render json: @exchange.errors, status: :unprocessable_entity
#     end
#   end

#   # DELETE /exchanges/1
#   # DELETE /exchanges/1.json
#   def destroy
#     @exchange.destroy

#     head :no_content
#   end

#   private

#     def set_exchange
#       @exchange = Exchange.find(params[:id])
#     end

#     def exchange_params
#       params.require(:exchange).permit(:name, :home_url, :documentation_url)
#     end
# end
