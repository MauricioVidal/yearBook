class SearchController < ApplicationController
  def index
  	@User.search(params[:search])
  end
end
