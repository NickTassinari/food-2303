require 'rails_helper'

RSpec.describe '#initialize' do
  it "exists and has attributes" do 
    data = {
      :gtinUpc=>"20042431",
      :description=>"very sweet tato",
      :brandOwner=>"Nicks Kick Ass Foods Dawg",
      :ingredients=>"Blood Sweat Tears for Fears"
    }

    new_food = Food.new(data)
    expect(new_food).to be_a(Food)
    expect(new_food.gtinUpc).to eq("20042431")
    expect(new_food.description).to eq("very sweet tato")
    expect(new_food.brandOwner).to eq("Nicks Kick Ass Foods Dawg")
    expect(new_food.ingredients).to eq("Blood Sweat Tears for Fears")
  end
  
end