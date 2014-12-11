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
      @users = User.where("nome_completo LIKE '%#{search}%' OR nome_copleto LIKE '%#{search.upcase}%' "+
        "nome_completo LIKE '%#{search}' OR nome_completo LIKE '#{search.capitalize}'").order(:nome_completo)
      if @user.nil?
        redirect_to("/", :alert => "Nenhum registro encontrado!!")  
      end
  	else
    	redirect_to("/", :alert => "Nenhum registro encontrado!!")
  	end
  end
end
