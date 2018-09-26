require 'rails_helper'

describe Api::V1::BooksController do
  include_context 'Authenticated User'

  describe 'GET #index' do
    let!(:books) { create_list(:book, 3) }

    before { get :index }

    it { expect(response).to have_http_status(:ok) }

    it 'responds with the books list in json format' do
      expected = ActiveModel::Serializer::CollectionSerializer.new(
        books, each_serializer: BookSerializer, root: false
      ).to_json
      expect(response_body.to_json) =~ JSON.parse(expected)
    end
  end

  describe 'GET #show' do
    let!(:book) { create(:book) }

    before { get :show, params: { id: book.id } }

    it { expect(response).to have_http_status(:ok) }

    it 'responds with the book in json format' do
      expect(response_body.to_json).to eq BookSerializer.new(
        book, root: false
      ).to_json
    end
  end
end
