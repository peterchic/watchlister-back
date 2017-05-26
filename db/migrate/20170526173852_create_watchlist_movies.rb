class CreateWatchlistMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :watchlist_movies do |t|
      t.integer :watchlist_id
      t.integer :movie_id
    end
  end
end
