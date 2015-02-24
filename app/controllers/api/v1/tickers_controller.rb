module Api
  module V1
    class TickersController < ApplicationController

      # GET /api/v1/tickers/
      def index
        render json: "nothing_to_do_here", status: 200
      end

    end
  end
end
