class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home test]

  def home
  end

  def test
    @carers = Carer.all

    @markers = @carers.geocoded.map do |carer|
      {
        lat: carer.latitude,
        lng: carer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { carer: carer })
      }
    end
  end
end
