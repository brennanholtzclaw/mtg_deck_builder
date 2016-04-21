class CardsController < ApplicationController

  def connection
    Faraday.new('https://api.magicthegathering.io')
  end

  def index
    @standard_cards = JSON.parse(connection.get("/v1/cards?set=[dtk,ori,bfz,exp,ogw,soi]&pageSize=1000").body)
  end

end
