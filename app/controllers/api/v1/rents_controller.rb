module Api
  module V1
    class RentsController < ApiController
      def index
        render_paginated rents, each_serializer: RentSerializer, status: :ok
      end

      private

      def rents
        user.rents
      end

      def user
        User.find(rent_params[:user_id])
      end

      def rent_params
        params.permit(:user_id)
      end
    end
  end
end
