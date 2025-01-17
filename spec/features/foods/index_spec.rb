# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients

require 'rails_helper'


RSpec.describe '/foods' do
  it "has information about foods from given food" do 
    
    visit root_path

    fill_in "q", with: "sweet potato"

    click_button "Search"

    expect(current_path).to eq("/foods")

    expect(page).to have_content("Total Number of Results: ")

    expect(page).to have_content("Gtin/UPC: 20042431")
    expect(page).to have_content("Description: SWEET POTATO")
    expect(page).to have_content("Brand Owner: Mindful Foods, Inc.")
    expect(page).to have_content("Ingredients: SOOZY'S FLOUR BLEND")
  end
  
end
