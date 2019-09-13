class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @searched_restaurant = Restaurant.search(params[:search])
    if @searched_restaurant
      redirect_to @searched_restaurant  
    end
  end

  def show 
    @restaurant = Restaurant.find(params[:id])
  end
end
