class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_garden, only: [:show, :edit, :update, :destroy]

  def index
    @gardens = policy_scope(Garden).order(created_at: :desc) # Iva will follow up - done!
  end

  def show
  end

  def new
    @garden = current_user.gardens.new
    authorize @garden
  end

  def create
    @garden = current_user.gardens.new(garden_params)
    authorize @garden
    if @garden.save
      redirect_to gardens_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @garden.update(garden_params)
    if @garden.save
      redirect_to @garden
    else
      render :edit
    end
  end

  def destroy
    @garden.destroy
    redirect_to gardens_path, notice: 'Garden was succsesfully removed!'
  end

  private

  def garden_params
    params.require(:garden).permit(:title, :description, :location, :price, :user_id, photos: [])
  end

  def set_garden
    @garden = Garden.find(params[:id])
    authorize @garden
  end
end
