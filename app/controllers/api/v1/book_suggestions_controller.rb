module Api
  module V1
    class BookSuggestionsController < ApiController
      skip_before_action :authenticate_user!, only: :create

      def create
        new_bs = new_book_suggestion
        if new_bs.save
          render json: new_bs, serializer: BookSuggestionSerializer, status: :created
        else
          render json: { errors: new_bs.errors }, status: :unprocessable_entity
        end
      end

      private

      def create_bs_params
        params
          .require(:book_suggestion)
          .permit(:synopsis, :price, :author, :title, :link, :publisher, :year)
      end

      def new_book_suggestion
        if current_user.present?
          current_user.book_suggestions.new(create_bs_params)
        else
          BookSuggestion.new(create_bs_params)
        end
      end
    end
  end
end
