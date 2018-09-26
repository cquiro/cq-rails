class RentSerializer < ActiveModel::Serializer
  attributes :id, :from, :to, :returned_at

  has_one :book, serializer: BookSerializer
  has_one :user, serializer: UserSerializer

  def from
    object.start_date
  end

  def to
    object.end_date
  end
end
