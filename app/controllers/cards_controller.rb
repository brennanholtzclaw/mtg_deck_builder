class CardsController < ApplicationController

  def connection
    Faraday.new('https://api.magicthegathering.io')
  end

  def index
    # @standard_cards = JSON.parse(connection.get("/v1/cards?set=[dtk,ori,bfz,exp,ogw,soi]&pageSize=1000").body)
    @standard_cards = JSON.parse(connection.get("/v1/cards?set=dtk&pageSize=10").body)
    # @standard_sets = JSON.parse(connection.get("/v1/sets?name=[dragons,origins,battle,oath,shadows]&pageSize=10").body)
    @standard_sets = JSON.parse(connection.get("/v1/sets?name=dragons_of_tarkir,origins,battle_for_zendikar,oath_of_the_gatewatch,shadows_over_innistrad&pageSize=10").body)["sets"]
    # @standard_sets = JSON.parse(connection.get("/v1/sets").body)["sets"]
    # binding.pry
    # @standard_sets = [
    #   JSON.parse(connection.get("/v1/sets?name=dragons_of_tarkir&pageSize=10").body)["sets"],
    #   JSON.parse(connection.get("/v1/sets?name=origins&pageSize=10").body)["sets"],
    #   JSON.parse(connection.get("/v1/sets?name=battle_for_zendikar&pageSize=10").body)["sets"],
    #   JSON.parse(connection.get("/v1/sets?name=oath_of_the_gatewatch&pageSize=10").body)["sets"],
    #   JSON.parse(connection.get("/v1/sets?name=shadows_over_innistrad&pageSize=10").body)["sets"]
    # ]
    # binding.pry
  end

end
