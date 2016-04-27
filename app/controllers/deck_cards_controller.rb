class DeckCardsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @card = Card.find_by(multiverseid: params[:multiverseid])
    status, message = @deck.update_quantity(params[:subtract], @card)
    flash.now[status] = message
    session[:deck] = @deck.contents
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
