class WatchlistSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :movies

end
