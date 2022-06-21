class CarersController < ApplicationController
  def index
    @carers = Carer.order(region: :desc, specialty: :desc)

    if params[:query].present?
      @carers = @carers.where('region ILIKE ?', "%#{params[:query]}%")
    end
  end
end
