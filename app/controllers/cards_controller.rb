class CardsController < ApplicationController
  def index
    @cards = MtgService.new
  end
end
