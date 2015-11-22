class SidesController < ApplicationController
  def index
    @advertisements = Advertisement.all
    @sellers = Seller.all
  end

  def show
    @advertisements = Advertisement.all

  end
end
