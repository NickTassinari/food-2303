class FoodsController < ApplicationController
  def index 
    @foods = SearchFacade.new.foods(params[:q])
  end
end