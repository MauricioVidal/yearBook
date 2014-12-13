class HomeController < ApplicationController
  def index
  	@user = current_user
  	@visitas = Visita.joins(:user)
  end
end
