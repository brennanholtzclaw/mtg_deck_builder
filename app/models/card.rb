class Card < ActiveRecord::Base
  def self.from_controller(card_info)
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
