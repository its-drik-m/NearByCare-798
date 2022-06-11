class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home test]

  def home
  end

  def test
  end
end
