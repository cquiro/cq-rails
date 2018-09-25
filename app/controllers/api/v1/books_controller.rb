module Api
  module V1
    class BooksController < ApplicationController
      include Wor::Paginate

      def index
        render_paginated books, each_serializer: Api::V1::BookSerializer, status: :ok
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
