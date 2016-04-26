class CardsController < ApplicationController
  def index
    @cards = MtgService.new
    MtgService.new.cards["cards"].each { |card| Card.from_controller(card)} #doing this at the moment to guarantee these cards are in the database for AJAX call
    # @deck_cards = @deck.contents
  end
end
