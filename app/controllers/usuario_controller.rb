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
  	if !search.eql?("")
      if @user.empty?
        redirect_to("/", :alert => "Nenhum registro encontrado!!")  
      end
      @users = User.where("nome_completo LIKE \"%#{search}%\"").order(:nome_completo)
  	else
    	redirect_to("/", :alert => "Nenhum registro encontrado!!")
  	end
  end
end
