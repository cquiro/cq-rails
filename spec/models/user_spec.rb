require 'rails_helper'

describe User do
  subject do
    build(:user)
  end

  it { is_expected.to be_valid }

  it { is_expected.to validate_numericality_of(:rents_count).is_greater_than_or_equal_to(0) }

  it { is_expected.to validate_presence_of(:locale) }
end
