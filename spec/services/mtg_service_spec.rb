require 'rails_helper'

RSpec.describe MtgService do
  context "#cards" do
    it "returns cards" do
      @service = MtgService.new
      VCR.use_cassette('mtg_service#cards') do
        cards = @service.cards
        card = cards["cards"].first

        expect(card["name"]).to eq "Wicker Witch"
      end
    end
  end

  context "#sets" do
    it "returns sets" do
      @service = MtgService.new
      VCR.use_cassette('mtg_service#sets') do
        sets = @service.sets
        set = sets.first

        expect(set["code"]).to eq "DTK"
      end
    end
  end

  context "#get_set_cards" do
    it "returns sets" do
      @service = MtgService.new
      VCR.use_cassette('mtg_service#set_cards') do
        set = @service.get_set_cards("ORI")

        expect(set["cards"].first["set"]).to eq "ORI"
      end
    end
  end


end


# describe SunlightService do
#   context "#legislators" do
#     it "returns legislators" do
#       VCR.use_cassette("sunlight#legislators") do
#         service = SunlightService.new
#         legislators = service.legislators(gender: "F")
#         legislator = legislators.first
#         expect(legislator[:first_name]).to eq ("Joni")
#         expect(legislator[:gender]).to eq ("F")
#         expect(legislators.count).to eq (20)
#       end
#     end
#   end
# end
