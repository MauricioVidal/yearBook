class WelcomeController < ApplicationController

  # GET /welcome
  def index
  	@users = User.order(:nome)
  end

end
