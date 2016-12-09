class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    all = Challenge.all
    @challenges = all.sample(4)
  end
end
