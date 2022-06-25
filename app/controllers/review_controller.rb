class ReviewController < ApplicationController
  before_action :set_review, only: %i[create show index destroy]

  def new
    @review = Review.new
    @review.booking_id = @booking.id
  end

  def create
    # allow booking only if carer is not same as patient
    if @booking.carer_id == current_user.id
      flash[:danger] = 'You cannot review your own booking!'
      redirect_to booking_path(@booking)
    else
      @review = Review.new(review_params)
      @review.booking_id = @booking.id
      @review.carer_id = @booking.carer_id
      @review.patient_id = @booking.patient_id
      @review.rating = params[:review][:rating]
      @review.comment = params[:review][:comment]

      if @review.save
        flash[:success] = 'Review created successfully!'
      else
        flash[:danger] = 'Review not created!'
      end
    end
    redirect_to booking_path(@booking)
  end

  def destroy; end

  def index; end

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

end
