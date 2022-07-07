class ReviewsController < ApplicationController
  before_action :set_review, only: %i[show]
  before_action :set_booking, only: %i[new create]
  before_action :set_carer, only: %i[index]
  before_action :import_reviews, only: %i[show]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    if @review.save
      flash[:success] = 'Review created successfully!'
      redirect_to carer_reviews_path(@booking.carer_id)
    else
      flash[:danger] = 'Review not created!'
    end
  end

  def index
    @reviewed = Review.all
    @bookings = Booking.where(carer_id: @carer)
    @reviews = @reviewed.where(booking_id: @bookings)
  end

  def show; end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :booking_id)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_carer
    @carer = Carer.find(params[:carer_id])
  end
end
