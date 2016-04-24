class SetsController < ApplicationController
  def index
    response = MtgService.new.get_set_cards(params["set"])
    @cards = response["cards"].each { |card| Card.from_controller(card)}
  end
end
