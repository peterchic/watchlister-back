class Api::V1::WatchlistsController < ApplicationController
  def index
    watchlists = Watchlist.all
    render json: watchlists
  end

  def create

    watchlist = Watchlist.create(watchlist_params)
    render json: watchlist
  end

  def show
    watchlist = Watchlist.find(params[:id])
    render json: watchlist
  end

  def destroy
    watchlist = Watchlist.find(params[:id])
    watchlist_movies = WatchlistMovie.where(watchlist_id: params[:id])
    movies = Movie.where(watchlist_id: params[:id])
    byebug
    movies.delete_all
    watchlist_movies.delete_all
    watchlist.delete
    render json: watchlist
  end

  def update
    watchlist = Watchlist.find(params[:id])
    watchlist.update(watchlist_params)
    render json: watchlist
  end

  private

  def watchlist_params

    params.require(:watchlist).permit(:name, :description)
  end
end
