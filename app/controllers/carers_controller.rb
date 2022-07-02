class CarersController < ApplicationController
  before_action :set_carer, only: %i[show edit update destroy]
  before_action :import_reviews, only: %i[show]
  helper_method :average_rating
  before_action :set_start_date

  def index
    # @carers = Carer.order(first_name: :desc)
    # if params[:query].present?
    sql_query = "region ILIKE :region AND specialty @> :specialty"
    specialty_query = "specialty @> :specialty"
    # @carers = Carer.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @carers = Carer.all
    # end
    @region = params[:region]
    @specialty = params[:specialty]

    if @region == "all"
      @carers = Carer.where(specialty_query, specialty: "{#{params[:specialty]}}")
    else
      @carers = Carer.where(sql_query, region: "%#{params[:region]}%", specialty: "{#{params[:specialty]}}")
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'list.html', locals: { carers: @carers }, formats: [:html] }
    end
  end

  def new
    @carer = Carer.new
  end

  def create
    @carer = Carer.new(carer_params)
    @carer.user_id = current_user.id
    User.find(@carer.user_id).role = 1
    if @carer.save
      redirect_to carer_path(@carer)
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
    @carer = Carer.find(params[:id])
    @bookings = Booking.where(start_date: @start_date.beginning_of_month.beginning_of_week..@start_date.end_of_month.end_of_week, carer_id: @carer)
  end

  def edit; end

  def update
    if @carer.update(carer_params)
      redirect_to carer_path(@carer)
    else
      render :edit
    end
  end


  private

  def average_rating(carer)
    @reviews = Review.joins(:booking).where('bookings.carer_id = ?', carer.id)
    @average_rating = 0
    @reviews.each do |review|
      @average_rating += review.rating
    end
    if @reviews.count.zero?
      return 0
    else
      return @average_rating /= @reviews.count
    end
  end

  def carer_params
    params.require(:carer).permit(:user_id, :photo, :region, specialty: [])
  end

  def set_carer
    @carer = Carer.find(params[:id])
  end

  def import_reviews
    @reviews = Review.joins(:booking).where('bookings.carer_id = ?', @carer.id)
  end

  # calculate average rating for the carer
  def set_start_date
    @start_date = params.fetch(:start_date, Date.today).to_date
  end
end
