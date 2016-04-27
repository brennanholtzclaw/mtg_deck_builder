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
# binding.pry
  @card = Card.find_by(multiverseid: params[:id])

  @deck.remove_card(@card.multiverseid)
  flash[:success] = "Removed #{@card.name} from your deck"

  redirect_to :back
end
  def index
    @deck_cards = @deck.fetch_cards
  end
end
