require 'rails_helper'

RSpec.describe FoodService do 
  describe "#get food" do 
    it 'can get a list of food' do 
      foods = FoodService.new.get_foods("sweet potato")

      expect(foods).to be_an(Hash)
      food_1 = foods[:foods][0]
      
      expect(food_1).to be_a Hash
      expect(food_1).to have_key(:gtinUpc)
      expect(food_1[:gtinUpc]).to be_a String
      expect(food_1).to have_key(:description)
      expect(food_1[:description]).to be_a String
      expect(food_1).to have_key(:brandOwner)
      expect(food_1[:brandOwner]).to be_a String 
      expect(food_1).to have_key(:ingredients)
      expect(food_1[:ingredients]).to be_a String
    end
  end
end