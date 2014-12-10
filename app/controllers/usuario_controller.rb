class UsuarioController < ApplicationController
  def show
  	if user_signed_in?
  		@user = User.find(params[:id])
  	else
  		redirect_to(new_user_session_path, :alert => "É necessario estar logado!!")
  	end
  end

  def pesquisar
  	search = params[:search]
  	if search
    	@user = User.find(:all, :conditions => ['nome_completo LIKE ?', "%#{search}%"])
  	else
    	@user = User.find(:all)
  	end
  end
end
