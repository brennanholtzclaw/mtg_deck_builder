# class Deck < ActiveRecord::Base
class Deck
  attr_accessor :contents
  # belongs_to :user
  # belongs_to :cards

  def initialize(starting_cards)
    @contents = starting_cards || {}
  end

  def card_count
    @contents.values.sum
  end
end
