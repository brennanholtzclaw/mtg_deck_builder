class SetsController < ApplicationController
  def index
    # @cards = Card.where(set: params["set"]).order("RANDOM()")
    @deck_cards = @deck.fetch_cards
    response = MtgService.new.get_set_cards(params["set"])
    @cards = response["cards"].each { |card| Card.from_controller(card)}
    # https://api.magicthegathering.io/v1/cards?name=forest,island,swamp,plains,mountain need to get lands included
  end
end
