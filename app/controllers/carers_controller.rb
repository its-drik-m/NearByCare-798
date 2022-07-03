class CarersController < ApplicationController
  before_action :set_carer, only: %i[show edit update destroy]
  before_action :set_start_date

  def index
    # @carers = Carer.order(first_name: :desc)
    # if params[:query].present?
    sql_query = "region ILIKE :region AND specialty ILIKE :specialty"
    region_query = "specialty ILIKE :specialty"
      # @carers = Carer.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @carers = Carer.all
    # end
    @region = params[:region]
    @specialty = params[:specialty]

    if @region == "all"
      @carers = Carer.where(region_query, specialty: "%#{params[:specialty]}%")
    else
      @carers = Carer.where(sql_query, region: "%#{params[:region]}%", specialty: "%#{params[:specialty]}%")
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
    @bookings = Booking.where(start_date: @start_date.beginning_of_month.beginning_of_week..@start_date.end_of_month.end_of_week, carer_id: @carer)
    @specialty = JSON.parse(@carer.specialty)
    # @booking = Booking.where(patient: )
    # raise
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

  def carer_params
    params.require(:carer).permit(:user_id, :photo, :region, specialty: [])
  end

  def set_carer
    @carer = Carer.find(params[:id])
  end

  def set_start_date
    @start_date = params.fetch(:start_date, Date.today).to_date
  end
end
