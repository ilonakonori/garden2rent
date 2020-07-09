class GardensController < ApplicationController
  before_action :set_garden, only [:show, :edit, :destroy]

  def index
    @gardens = Garden.all
    @garden = policy_scope(Garden).order(created_at :asc)
  end

  def show
  end

  def new
    @garden = Garden.new
    authorize @garden
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    authorize @garden

    if @garden.save
      redirect_to @gardens
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @garden.destroy
    redirect_to garden_url, notice: 'Garden was succsesfully removed!'
  end

  private

  def garden_params
    @garden = params.require(:garden).permit(:name, user_id, photos: [])
  end

  def set_garden
    @garden = Garden.find(params[:id])
    authorize @garden
  end
end
