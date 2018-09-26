require 'rails_helper'

describe Rent do
  context 'with built-in validations' do
    subject { build(:rent) }

    it { is_expected.to be_valid }

    it { is_expected.to validate_presence_of(:start_date) }

    it { is_expected.to validate_presence_of(:end_date) }
  end

  context 'with custom validations' do
    subject { build(:rent, start_date: Time.current, end_date: 2.days.ago) }

    it { is_expected.not_to be_valid }
  end

  context 'when a new rent is created' do
    let!(:user) { create(:user) }
    let!(:book) { create(:book) }

    it 'updates rents_count in the user model' do
      expect {
        Rent.create(attributes_for(:rent).merge(user_id: user.id, book_id: book.id))
      }.to change { User.find(user.id).rents_count }.by(1)
    end
  end
end
