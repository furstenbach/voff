class SearchController < ApplicationController
  protect_from_forgery except: :search
  def search
    @location = params[:location]
    @date = params[:Date]
  end
end
