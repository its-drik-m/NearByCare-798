class CarersController < ApplicationController
  before_action :set_carer, only: %i[show edit update destroy]
  def index
    @carers = Carer.all
  end

  def new
    @carer = Carer.new
  end

  def create
    @carer = Carer.new(carer_params)
    @carer.user.role = 1
    if @carer.save
      redirect_to carer_path(@carer)
    else
      render :new
    end
  end

  def show
    @review = Review.new
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
    params.require(:carer).permit(:region, :specialty, :photo)
  end

  def set_carer
    @carer = current_user
  end
end
