require 'rails_helper'

RSpec.describe "sending GET to api endpoint returns card you want" do
  it "returns first test card" do
    card1 = create(:card, multiverseid: 123)
    card2 = create(:card, multiverseid: 456)

    get "/api/v1/cards/123"

    expect(JSON.parse(response.body)["multiverseid"]).to eq(card1.multiverseid)
    expect(JSON.parse(response.body)["multiverseid"]).to_not eq(card2.multiverseid)
  end
end
