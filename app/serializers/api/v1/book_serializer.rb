module Api
  module V1
    class BookSerializer < ActiveModel::Serializer
      attributes :id, :author, :title, :image, :publisher, :year, :genre,
                 :created_at, :updated_at
    end
  end
end
