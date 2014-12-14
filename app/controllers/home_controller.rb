class HomeController < ApplicationController
  def index
  	if user_signed_in?
  	@user = current_user
  	@visitas = Visita.where("current_user_id = #{@user.id}").distinct.pluck(:user_visited_id).first(3)
  	else
  		redirect_to(new_user_session_path, :alert => "É necessario estar logado!!")
  	end
  end
end
