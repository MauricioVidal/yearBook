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
      sql = "nome_completo LIKE '#{search}' OR nome_copleto LIKE '%#{search}' OR "
      sql <<"nome_completo LIKE '#{search}%' OR nome_completo LIKE '%#{search}%' OR "
      sql <<"nome_completo LIKE '#{search.capitalize}' OR nome_completo LIKE '%#{search.upcase}%"
      @users = User.where(sql).order(:nome_completo)
      puts @users
      if @user.nil?
        redirect_to("/", :alert => "Nenhum registro encontrado!!")  
      end
  	else
    	redirect_to("/", :alert => "Nenhum registro encontrado!!")
  	end
  end
end
