class MoviesController < ApplicationController
  def all
    @movies = Movie.all
    render json: @movies
  end

  def search
    @movies = Movie.all
    if params.has_key?(:y)
      @movies = @movies.where(:year=> params[:y])
    end
    if params.has_key?(:t)
      movie_title = params[:t].capitalize
      @movies = @movies.where("title LIKE ?", "%#{movie_title}%")
    end
    render json: @movies
  end
end
