class HomeController < ApplicationController
  def index
  	@user = current_user
  	@visitas = Visita.select("user_visited_id ").where("current_user_id = '#{current_user.id}'").distinct.first(5);
  end
end
