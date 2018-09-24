module Api
  module V1
    class BooksController < ApplicationController
      def index
        render json: books, each_serializer: Api::V1::BookSerializer, status: :ok
      end

      def show
        render json: book, serializer: Api::V1::BookSerializer, status: :ok
      end

      private

      def book
        @book ||= Book.find(params[:id])
      end

      def books
        @books ||= Book.all
      end
    end
  end
end
