class BookSuggestionSerializer < ActiveModel::Serializer
  attributes :id, :synopsis, :price, :author, :title, :link, :publisher, :year,
             :created_at, :updated_at

  has_one :user, serializer: UserSerializer
end
