module Api
  module V1
    class ExchangesController < ApplicationController

      # GET /api/v1/exchanges/
      def index
        render json: Exchange.all, status: 200
      end

      # GET /api/v1/exchanges/<id>
      def show

        @exchange = Exchange.find(params[:id])
        if @exchange.nil?
          render json: "Something bad happened.", status: 400
        else
          render json: @exchange, status: 200
        end
      rescue ActiveRecord::ActiveRecordError => e
        verify_exception(e)
      end

      private
        def verify_exception(exception)
          render json: "Error: #{exception.message.to_s}", status: 404
        end
    end
  end
end
