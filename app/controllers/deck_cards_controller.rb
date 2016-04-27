class DeckCardsController < ApplicationController
  def create
    binding.pry
    redirect_to :back
  end

  def destroy
    redirect_to :back
  end

  def index
    @deck_cards = @deck.contents.values
    redirect_to :back
    # binding.pry
    # render Rails.application.routes.recognize_path(request.referer)[:controller]
    # call = Rails.application.routes.recognize_path(request.referer)
    # aim = "/#{call[:controller]}##{call[:action]}"
    # render aim
  end
end
