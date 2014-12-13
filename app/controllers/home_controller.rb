class HomeController < ApplicationController
  def index
  	@user = current_user
  	@visitas = Visita.select("Distinct user_visited_id ").where("current_user_id = '#{current_user.id}'").first(5);
  end
end
