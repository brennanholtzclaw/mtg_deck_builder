require 'rails_helper'

RSpec.feature "clicking through main views on site" do
  it "walks through main views" do
    VCR.use_cassette('cards#browse') do

      visit '/'

      expect(page).to have_content("Just want to browse")

      click_on "Click here!"

      expect(page).to have_content("Standard Sets")
      expect(page).to have_content("Selected Card")
      expect(page).to have_content("Featured Card")
    end
    VCR.use_cassette('sets#browse') do
      click_on "Shadows over Innistrad"

      expect(page).to have_content("Your Deck")

#       first('.card').click
# sleep 5
#       within(".selected_card") do
#         expect(page).to have_content(".button_to")
#         expect(page).to have_content("+1 your deck")
#       end
    end
  end
end
