class UsuarioController < ApplicationController
  def show
  	before_filter :authenticate_user!
  	@user = User.find(params[:id])
  end

  def pesquisar
  end
end
