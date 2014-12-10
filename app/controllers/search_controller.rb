class SearchController < ApplicationController
  def index
  	@user = User.search(params[:search])
  end
end
