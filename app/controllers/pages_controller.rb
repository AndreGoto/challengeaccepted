class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @challenges      = Challenge.where(yourself: false).sample(4)
    @self_challenges = Challenge.where(yourself: true).sample(4)
  end
end
