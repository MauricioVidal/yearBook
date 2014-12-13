class UsuarioController < ApplicationController
  def show
  	if user_signed_in?
  		@user = User.find(params[:id])
      #if(!(current_user.nome_completo.eql?(@user.nome_completo))
        @visita = Visita.new(current_user, @user)
        @visita.save
      #end
  	else
  		redirect_to(new_user_session_path, :alert => "É necessario estar logado!!")
  	end
  end

  def pesquisar
    if user_signed_in?
    	search = params[:search]
    	if !search.eql?("")
        sql = "nome_completo LIKE '#{search}%'"
        #sql <<"nome_completo LIKE '#{search}%' OR nome_completo LIKE '%#{search}%' OR "
        #sql <<"nome_completo LIKE '#{search.capitalize}' OR nome_completo LIKE '%#{search.upcase}%"
        @users = User.where(sql).order(:nome_completo)
        if @users.empty?
          redirect_to("/", :alert => "Nenhum registro encontrado!!")  
        end
    	else
      	redirect_to("/", :alert => "Nenhum registro encontrado!!")
    	end
    else
      redirect_to(new_user_session_path, :alert => "É necessario estar logado!!")
    end
  end
end
