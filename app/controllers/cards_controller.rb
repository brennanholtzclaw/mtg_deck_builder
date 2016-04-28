class CardsController < ApplicationController
  def index
    @sets = MtgService.new
    @cards = Card.where(set: "SOI").sample(10)
  end
end
