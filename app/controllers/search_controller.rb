class SearchController < ApplicationController
  def search
    @location = params[:location]
    @date = params[:Date]
  end
end
