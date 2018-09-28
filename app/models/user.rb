class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rents, dependent: :nullify

  validates :rents_count, numericality: { greater_than_or_equal_to: 0 }
  validates :locale, presence: true

  include DeviseTokenAuth::Concerns::User
end
