# Api
module Api
  # version on the Api
  module V1
    # GreetingController show all gratings
    class GreetingController < ApplicationController
      def index
        @greeting = Greeting.order(Arel.sql('RANDOM()')).first

        render json: @greeting
      end
    end
  end
end
