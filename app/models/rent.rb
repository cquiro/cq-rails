class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :user, :book, :start_date, :end_date, presence: true
  validate :end_date_cannot_be_earlier_than_start_date

  private

  def end_date_cannot_be_earlier_than_start_date
    return unless start_date && end_date

    errors.add(:end_date, "can't be earlier than start date") if end_date < start_date
  end
end
