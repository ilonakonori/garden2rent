class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    authorize @review
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    authorize @review
    if @review.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @review.update(review_params)
    if @review.save
      redirect_to bookings_path
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    flash[:notice] = 'Review was succsesfully removed!'
    redirect_back(fallback_location: 'pages#home')
  end

  private

  def set_review
    @review = Review.find(params[:id])
    authorize @review
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
