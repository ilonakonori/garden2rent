class GardensController < ApplicationController
  before_action: set_garden, only [:show, edit, destroy]
  def index
    @gardens = Garden.all
  end

  def show
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)

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
    @garden = params.require(:garden(:name, user_id))
  end

  def set_garden
    @garden = Garden.find(params[:id])
  end
end
