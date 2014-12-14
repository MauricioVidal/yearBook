class VisitaController < ApplicationController
  before_action :set_visitum, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  respond_to :html

  def index
    @visita = Visitum.all
    respond_with(@visita)
  end

  def show
    respond_with(@visitum)
  end

  def new
    @visitum = Visitum.new
    respond_with(@visitum)
  end

  def edit
  end

  def create
    @visitum = Visitum.new(visitum_params)
    @visitum.save
    respond_with(@visitum)
  end

  def update
    @visitum.update(visitum_params)
    respond_with(@visitum)
  end

  def destroy
    @visitum.destroy
    respond_with(@visitum)
  end

  private
    def set_visitum
      @visitum = Visitum.find(params[:id])
    end

    def visitum_params
      params.require(:visitum).permit(:current_user_id, :user_visited_id)
    end
end
