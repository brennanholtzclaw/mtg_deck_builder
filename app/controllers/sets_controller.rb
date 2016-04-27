class SetsController < ApplicationController
  def index
    response = MtgService.new.get_set_cards(params["set"])
    @cards = response["cards"].each { |card| Card.from_controller(card)}
    # https://api.magicthegathering.io/v1/cards?name=forest,island,swamp,plains,mountain need to get lands included
    @deck_cards = @deck.contents
    # binding.pry
  end
end
