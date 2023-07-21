class SearchFacade
  def foods(food)
    service = FoodService.new 
    json = service.get_foods(food)

    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end