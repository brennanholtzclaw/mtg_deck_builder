class Card < ActiveRecord::Base

  # def self.from_service(card_info)
  #   if card_info.colors.nil?
  #     ColorlessCard.new
  #   elsif card_info.colors.count > 1
  #     GoldCard.new
  #   elsif card_info.colors.first.downcase == "red"
  #     RedCard.new
  #   elsif card_info.colors.first.downcase == "blue"
  #     BlueCard.new
  #   elsif card_info.colors.first.downcase == "green"
  #     GreenCard.new
  #   elsif card_info.colors.first.downcase == "white"
  #     WhiteCard.new
  #   elsif card_info.colors.first.downcase == "black"
  #     BlackCard.new
  #   else
  #     "hell I don't know..."
  #   end
  # end

  def self.from_controller(card_info)
    # binding.pry
    find_or_create_by(multiverseid: card_info["multiverseid"]) do |new_card|
      new_card.multiverseid   = card_info["multiverseid"]
      new_card.name           = card_info["name"]
      new_card.manacost       = card_info["manaCost"]
      new_card.colors         = card_info["colors"]
      new_card.cmc            = card_info["cmc"]
      new_card.card_type      = card_info["type"]
      new_card.rarity         = card_info["rarity"]
      new_card.set            = card_info["set"]
      new_card.text           = card_info["text"]
      new_card.flavor         = card_info["flavor"]
      new_card.power          = card_info["power"]
      new_card.toughness      = card_info["toughness"]
      new_card.imageUrl       = card_info["imageUrl"]
      new_card.layout         = card_info["layout"]
      new_card.names          = card_info["names"]
    end
  end

end
