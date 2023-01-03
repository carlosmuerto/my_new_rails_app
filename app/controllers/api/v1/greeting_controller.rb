# frozen_string_literal: true

module Api
  module V1
    class GreetingController < ApplicationController
      def index
        @greeting = Greeting.order(Arel.sql('RANDOM()')).first

        render json: @greeting
      end
    end
  end
end
