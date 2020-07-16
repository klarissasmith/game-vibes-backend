class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :rating, :studio, :socials, :official_site, :summary, :consoles
end
