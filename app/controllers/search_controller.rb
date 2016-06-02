class SearchController < ApplicationController
  def search
    location = params[:name]
    date = params[:Date]
    flash[:success] = "<br>You have searched for a dogsitter in #{location} on the #{date}."
  end
end
