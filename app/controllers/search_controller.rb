class SearchController < ApplicationController
  def busca
  	@user = User.search(params[:search])
  end
end
