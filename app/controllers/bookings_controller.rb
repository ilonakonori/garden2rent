class BookingsController < ApplicationController
  before_action :set_garden, only: [:new, :create]

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @booking.garden = @garden
    @booking.user = current_user

    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.garden = @garden
    @booking.user = current_user
    authorize @booking

    if @booking.save
      redirect_to bookings_path, notice: "Booking successful, enjoy your garden stay!"
    else
      render :new
    end
  end

  #def edit
  #end

  #def update
  #end

  #def destroy
  #end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_garden
    @garden = Garden.find(params[:garden_id])
  end
end
