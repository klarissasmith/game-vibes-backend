class StudioSerializer < ActiveModel::Serializer
  attributes :id
  has_one :game
end
