class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :tagline, :runtime, :description, :poster, :release_date

  has_many :watchlists
  
end
