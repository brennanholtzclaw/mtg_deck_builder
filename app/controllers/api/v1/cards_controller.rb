class Api::V1::CardsController < ApplicationController
  respond_to :json

  def show
    respond_with Card.find_by(multiverseid: params[:multiverseid])
  end

end
