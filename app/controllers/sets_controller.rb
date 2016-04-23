class SetsController < ApplicationController
  def index
    # binding.pry
    @set = MtgService.new.get_set_cards(params["set"])
  end
end
