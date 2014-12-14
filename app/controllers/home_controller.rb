class HomeController < ApplicationController
  def index
  	@user = current_user
  	@visitas = Visita.select("nome_completo").joins(:user).distinct
  end
end
