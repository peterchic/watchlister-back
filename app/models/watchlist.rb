class Watchlist < ApplicationRecord

  has_many :watchlist_movies
  has_many :movies, through: :watchlist_movies

end
