class Api::V1::WatchlistMoviesController < ApplicationController

	def index
	   watchlist_movies = WatchlistMovie.all
       render json: watchlist_movies
	end

  def create
    watchlist = Watchlist.find(watchlist_movie_params[:watchlist_id])
   	movie = watchlist.movies.create(title: watchlist_movie_params[:movie][:title],
   							description: watchlist_movie_params[:movie][:overview],
   							poster: watchlist_movie_params[:movie][:poster_path],
   							release_date: watchlist_movie_params[:movie][:release_date]   )
   	render json: watchlist
  end

  private

 def watchlist_movie_params

    params.require(:watchlist_movie).permit(:watchlist_id, movie: [:title, :poster_path, :overview, :release_date])
  end

end
