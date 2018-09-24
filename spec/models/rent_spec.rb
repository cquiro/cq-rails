require 'rails_helper'

describe Rent do
  subject do
    build(:rent)
  end

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:start_date) }

  it { is_expected.to validate_presence_of(:end_date) }

  it 'is not valid when end_date < start_date' do
    rent = build(:rent, start_date: Time.current, end_date: 2.days.ago)
    rent.valid?

    expect(rent.errors[:end_date]).to include 'can\'t be earlier than start date'
  end
end
