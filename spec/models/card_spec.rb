require 'rails_helper'

RSpec.describe Card, type: :model do
  it "loads in data correctly" do
    raw_data = {
      "multiverseid" => "123456",
      "name" => "test_card",
      "manaCost" => "{3}",
      "colors" => "red",
      "cmc" => "3",
      "type" => "artifact",
      "rarity" => "rare",
      "set" => "ORI",
      "text" => "This is test text",
      "flavor" => "But this test text is much more flavorful",
      "power" => "3",
      "toughness" => "3",
      "imageUrl" => "http://www.example.com/fake.png",
      "layout" => "normal",
      "names" => ["test", "names"],
    }

    Card.from_controller(raw_data)

    expect(Card.first.name).to eq raw_data["name"]
    expect(Card.first.multiverseid).to eq raw_data["multiverseid"]
    expect(Card.first.card_type).to eq "artifact"
  end
end
