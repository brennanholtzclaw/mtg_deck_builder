class SetsController < ApplicationController
  def index
    @cards = MtgService.new.get_set_cards(params["set"])
    # binding.pry
  end
end
