class HomeController < ApplicationController
  def index
  	@user = current_user
  	@visitas = Visita.where("current_user_id = #{@user.id}").distinct.pluck(:user_visited_id)
  end
end
