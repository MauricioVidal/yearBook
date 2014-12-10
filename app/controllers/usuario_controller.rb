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
    	@users = User.where("nome_completo = #{search}").order(:nome_completo)
  	else
    	@users = User.first(9)
  	end
  end
end
