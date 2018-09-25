module Api
  module V1
    class BooksController < ApiController
      def index
        render_paginated books, each_serializer: Api::V1::BookSerializer, status: :ok
      end

      def show
        render json: book, serializer: Api::V1::BookSerializer, status: :ok
      end

      private

      def book
        Book.find(book_params[:id])
      end

      def books
        Book.all
      end

      def book_params
        params.permit(:id)
      end
    end
  end
end
