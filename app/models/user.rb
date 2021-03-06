class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rents, dependent: :nullify
  has_many :book_suggestions, dependent: :nullify

  validates :rents_count, numericality: { greater_than_or_equal_to: 0 }
  validates :locale, presence: true

  enum locale: { en: 0, es: 1 }

  include DeviseTokenAuth::Concerns::User

  def display_name
    "#{first_name} #{last_name}"
  end
end
