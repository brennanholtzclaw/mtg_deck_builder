class CardsController < ApplicationController
  def index
    @sets = MtgService.new
    @cards = Card.where(set: "SOI").sample(10)
    # @cards = MtgService.new
    # MtgService.new.cards["cards"].each { |card| Card.from_controller(card)} #doing this at the moment to guarantee these cards are in the database for AJAX call
  end
end
