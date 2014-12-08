class WelcomeController < ApplicationController

  # GET /welcome
  def index
  	@users = User.order(:nome_completo)
  end

end
