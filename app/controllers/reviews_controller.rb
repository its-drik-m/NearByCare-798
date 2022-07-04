class ReviewsController < ApplicationController
  before_action :set_review, only: %i[create show destroy]
  before_action :set_booking, only: %i[new create]
  before_action :set_carer, only: %i[new create index]
  before_action :set_patient, only: %i[new create index]
  before_action :set_user, only: %i[new create index]
  before_action :import_reviews, only: %i[show]
  # helper_method :average_rating

  def new
    # allow booking only if carer is not same as patient
    if @carer.id == current_user.id
      redirect_to booking_path(@booking)
    else
      @review = Review.new
      # @review.booking_id = @booking.id
    end
  end

  def create
    # allow booking only if carer is not same as patient
    if @booking.carer_id == current_user.id
      flash[:danger] = 'You cannot review your own booking!'
      redirect_to booking_path(@booking)
    else
      @review = Review.new(review_params)
      @review.booking_id = @booking.id
      @review.rating = params[:review][:rating]
      @review.comment = params[:review][:comment]

      if @review.save
        flash[:success] = 'Review created successfully!'
        redirect_to carer_reviews_path
      else
        flash[:danger] = 'Review not created!'
      end
    end
  end

  def destroy; end

  def index
    # obtain reviews by joining reviews with bookings table
    @reviews = Review.joins(:booking).where('bookings.carer_id = ?', @carer.id)
  end

  def show; end

  private

  # # calculate average rating for a carer
  # def average_rating(carer)
  #   @reviews = Review.joins(:booking).where('bookings.carer_id = ?', carer.id)
  #   @average_rating = 0
  #   @reviews.each do |review|
  #     @average_rating += review.rating
  #   end
  #   if @reviews.count.zero?
  #     return 0
  #   else
  #     return @average_rating /= @reviews.count
  #   end
  # end

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

  def set_patient
    @patient = current_user
  end

  def set_user
    @user = User.find(@carer.user_id)
  end
end
