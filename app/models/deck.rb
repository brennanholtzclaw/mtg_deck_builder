# class Deck < ActiveRecord::Base
class Deck
  attr_accessor :contents
  # belongs_to :user
  # belongs_to :cards

  def initialize(starting_cards)
    # @contents = starting_cards || []
    @contents = starting_cards || {}
  end

  def card_count
    # @contents.count
    @contents.values.sum
  end

  def update_quantity(subtract, card)
    contents[card.id.to_s] ||= 0
    if subtract
      contents[card.id.to_s] -= 1
      remove_card(card.id) if contents[card.id.to_s] == 0
      [:danger, "1 #{card.name} removed from your deck!"]
    else
      contents[card.id.to_s] += 1
      [:success, "1 #{card.name} added to your deck!"]
    end
  end

  def remove_card(card_id)
    contents.delete(card_id.to_s)
  end
end
