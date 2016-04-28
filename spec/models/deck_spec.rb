require 'rails_helper'

RSpec.describe Deck, type: :model do
  it "initializes as an empty hash if given nil argument" do
    deck = Deck.new(@empty_info_variable)

    expect(deck.contents).to eq({})
  end

  it "counts the cards in the deck" do
    deck_hash = {"12345" => 2, "67890" => 1}
    deck = Deck.new(deck_hash)

    expect(deck.card_count).to eq 3
  end

  it "removes a card from the deck" do
    deck_hash = {"12345" => 2, "67890" => 1}
    deck = Deck.new(deck_hash)

    deck.remove_card("12345")

    expect(deck.card_count).to eq 1
    expect(deck.contents).to eq ({"67890" => 1})
  end

  it "updates quantity of cards" do
    additional_card = create(:card, multiverseid: 12345)
    deck_hash = {"12345" => 2, "67890" => 1}
    deck = Deck.new(deck_hash)

    deck.update_quantity(@nil_variable, additional_card)
    expect(deck.contents).to eq({"12345" => 3, "67890" => 1})

    deck.update_quantity(true, additional_card)
    expect(deck.contents).to eq({"12345" => 2, "67890" => 1})
  end

  it "fetches cards" do
    card1 = create(:card, multiverseid: 12345)
    card2 = create(:card, multiverseid: 67890)
    deck_hash = {"12345" => 2, "67890" => 1}
    deck = Deck.new(deck_hash)

    expect(deck.fetch_cards).to eq [[card1, 2], [card2, 1]]
  end

end
