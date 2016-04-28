require 'rails_helper'

RSpec.describe MtgService do
  context "#cards" do
    it "returns cards" do
      # VCR.use_cassette()
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
