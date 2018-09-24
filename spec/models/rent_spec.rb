require 'rails_helper'

describe Rent do
  it 'is valid with valid attributes' do
    rent = build(:rent)

    expect(rent).to be_valid
  end

  it 'is not valid without a user' do
    rent = build(:rent, user: nil)

    expect(rent).not_to be_valid
  end

  it 'is not valid without a book' do
    rent = build(:rent, book: nil)

    expect(rent).not_to be_valid
  end

  it 'is not valid without a start_date' do
    rent = build(:rent, start_date: nil)

    expect(rent).not_to be_valid
  end

  it 'is not valid without an end_date' do
    rent = build(:rent, end_date: nil)

    expect(rent).not_to be_valid
  end

  it 'is not valid when end_date < start_date' do
    rent = build(:rent, start_date: Time.current, end_date: 2.days.ago)
    rent.valid?

    expect(rent.errors[:end_date]).to include 'can\'t be earlier than start date'
  end
end
