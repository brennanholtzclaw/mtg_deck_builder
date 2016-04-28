class MtgService
  def connection
    Faraday.new('https://api.magicthegathering.io')
  end

  def sets
    JSON.parse(connection.get("/v1/sets?name=dragons_of_tarkir,origins,battle_for_zendikar,oath_of_the_gatewatch,shadows_over_innistrad&pageSize=10").body)["sets"]
  end

  def cards
    JSON.parse(connection.get("/v1/cards?set=soi&pageSize=10").body)
  end

  def get_set_cards(code)
    JSON.parse(connection.get("/v1/cards?set=#{code.downcase}&pageSize=300").body)
  end
end
