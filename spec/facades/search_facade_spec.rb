require 'rails_helper'

RSpec.describe SearchFacade do
  describe "class methods" do 
    it '.get_foods' do 
      all_foods = SearchFacade.new.foods("sweet potato")

      expect(all_foods).to be_an(Array) 
      expect(all_foods.first).to be_a(Food)
      expect(all_foods.first.gtinUpc).to be_a(String)
      expect(all_foods.first.description).to be_a(String)
      expect(all_foods.first.brandOwner).to be_a(String)
      expect(all_foods.first.ingredients).to be_a(String)
    end
  end
  
end