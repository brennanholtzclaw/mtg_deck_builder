class SetsController < ApplicationController
  def index
    @cards = MtgService.new.get_set_cards(params["set"])
    @cards["cards"].each { |card| Card.from_controller(card)}
    # binding.pry
  end
end
