class Card < ActiveRecord::Base

  def self.from_service(card_info)
    where(uid: card_info[:multiverseid]).first_or_create do |new_card|
      new_card.multiverseid                = card_info."XXXXXX".multiverseid
      new_card.name               = card_info."XXXXXX".extra.raw_info.name
      new_card.manacost       = card_info."XXXXXX".extra.raw_info.manacost
      new_card.colors              = card_info."XXXXXX".info.colors
      new_card.cmc              = card_info."XXXXXX".info.cmc
      new_card.type              = card_info."XXXXXX".info.type
      new_card.rarity              = card_info."XXXXXX".info.rarity
      new_card.set             = card_info."XXXXXX".info.set
      new_card.text              = card_info."XXXXXX".info.text
      new_card.flavor              = card_info."XXXXXX".info.flavor
      new_card.power              = card_info."XXXXXX".info.power
      new_card.toughness              = card_info."XXXXXX".info.toughness
      new_card.imageurl              = card_info."XXXXXX".info.imageurl
      new_card.layout              = card_info."XXXXXX".info.layout
      new_card.names              = card_info."XXXXXX".info.names
    end
  end

end
