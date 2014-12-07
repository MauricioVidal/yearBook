class WelcomeController < ApplicationController

  # GET /welcome
  def index
  	@users =  User.order(:email)
  end

end
