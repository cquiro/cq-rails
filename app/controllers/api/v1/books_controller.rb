module Api
  module V1
    class BooksController < ApplicationController
      def show
        render json: book, serializer: Api::V1::BookSerializer, status: :ok
      end

      private

      def book
        @book ||= Book.find(params[:id])
      end
    end
  end
end
