module Api
  module V1
    class BookInfoController < ApiController
      def show
        render json: book_data, status: :ok
      end

      private

      def book_data
        OpenLibraryService.new(book_params[:isbn]).book_info
      end

      def book_params
        params.permit(:isbn)
      end
    end
  end
end
