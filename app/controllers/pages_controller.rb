class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home test]

  def home
  end

  # def after_registration_path
  # end

  def test
  end
end
