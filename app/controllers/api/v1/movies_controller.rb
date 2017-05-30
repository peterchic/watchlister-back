class Api::V1::MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie
  end

  def create
  	movie = Movie.create(movie_params)
  	render json: movie
  end

  private

  def movie_params
  	params.require(:movie).permit(:title, :description, :poster, :release_date)
  end

end
