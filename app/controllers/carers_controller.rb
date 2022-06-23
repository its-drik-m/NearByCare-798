class CarersController < ApplicationController
  before_action :set_carer, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      sql_query = "region ILIKE :query OR specialty ILIKE :query"
      @carers = Carer.where(sql_query, query: "%#{params[:query]}%")
    else
      @carers = Carer.all
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'list.html', locals: { carers: @carers } }
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
    params.require(:carer).permit(:first_name, :last_name, :region, :specialty, :photo)
  end

  def set_carer
    @carer = Carer.find(params[:id])
  end
end
