class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_garden, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @gardens = policy_scope(Garden).search_by_location(params[:query])
      @gardens.count == 1 ? sg_pl = "garden" : sg_pl = "gardens"
      @msg = "We found #{@gardens.count} #{sg_pl} out of #{Garden.count} gardens."
      if @gardens.empty?
        @gardens = policy_scope(Garden).order(created_at: :desc)
        @msg = "Sorry, no results for #{@query.upcase}! But we have #{@gardens.count} gardens, hope you'll find one that satisfied your needs! :)"
      end
    else
      @gardens = policy_scope(Garden).order(created_at: :desc)
      @msg = ""
    end

    @markers = @gardens.geocoded.map do |garden| # I see map :D
      {
        lat: garden.latitude,
        lng: garden.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { garden: garden }),
        image_url: helpers.asset_url('tulip.png')
      }
    end # Iva will follow up - done!
  end

  def show
    @booking = Booking.new
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
    redirect_to my_gardens_gardens_path, notice: 'Garden was succsesfully removed!'
  end

  def my_gardens
    @gardens = current_user.gardens
    authorize @gardens
  end

  def total_price
    garden = Garden.find(garden_id)
    (end_date - start_date).to_i * garden.price
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
