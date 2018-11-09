class MoviesController < ApplicationController
  def search
    @search_results = SearchMovie.new(params[:post][:name]).perform
  end
end
