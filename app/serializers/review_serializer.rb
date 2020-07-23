class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :summary
  has_one :game
  has_one :user
end
