class DeckCardsController < ApplicationController
  def create
    @card = Card.find_by(multiverseid: params[:multiverseid])
    status, message = @deck.update_quantity(params[:subtract], @card)
    session[:deck] = @deck.contents
    # binding.pry
    redirect_to :back

      # @item = Item.find(params[:item_id])
      # status, message = @cart.update_quantity(params[:subtract], @item)
      # flash[status] = message
      # session[:cart] = @cart.contents
      # redirect_to :back
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
