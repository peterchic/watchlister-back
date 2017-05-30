class Api::V1::WatchlistMoviesController < ApplicationController
	
	def index
	   watchlist_movies = WatchlistMovie.all
       render json: watchlist_movies
	end  

  def create
    watchlist = Watchlist.find(params[:id])
   	watchlist.movies.create(title: watchlist_movie_params[:movie].title, 
   							overview: watchlist_movie_params[:movie].overview,
   							poster_path: watchlist_movie_params[:movie].poster_path,
   							release_date: watchlist_movie_params[:movie].release_date   )
  end

 def watchlist_movie_params
    params.require(:watchlist_movie).permit(:watchlist_id, :movie)
  end

end
