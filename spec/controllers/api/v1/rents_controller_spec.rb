require 'rails_helper'

describe Api::V1::RentsController do
  include_context 'Authenticated User'

  describe 'GET #index' do
    let!(:rents) { create_list(:rent, 3, user: user) }

    before { get :index, params: { user_id: user.id } }

    it { expect(response).to have_http_status(:ok) }

    it 'responds with the user\'s rents in json format' do
      expected = ActiveModel::Serializer::CollectionSerializer.new(
        rents, each_serializer: RentSerializer, root: false
      ).to_json

      expect(response_body.to_json) =~ JSON.parse(expected)
    end
  end

  describe 'POST #create' do
    let(:book) { create(:book) }
    let(:rent_attrs) { attributes_for(:rent) }

    before do
      post :create, params: {
        user_id: user.id,
        rent: rent_attrs.merge(book_id: book.id)
      }
    end

    it { expect(response).to have_http_status(:created) }

    it 'returns the correct book' do
      expect(response_body['book']['id']).to eq book.id
    end

    it 'returns the correct user' do
      expect(response_body['user']['id']).to eq user.id
    end

    it 'returns a rent with the rent_attrs' do
      expect(response_body['start_date'].to_date).to eq rent_attrs[:start_date]
    end
  end
end
