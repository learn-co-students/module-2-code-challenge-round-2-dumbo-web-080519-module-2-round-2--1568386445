class RestaurantsController < ApplicationController
  def index
    # @restaurants = Restaurant.all
    if params[:search]
      @restaurants = Restaurant.search(params[:search])
    else
      @restaurants = Restaurant.all
    end
    @pizzas = Pizza.all
  end

 

  def show 
     @restaurant = Restaurant.find(params[:id])
  end

  def new 
    @restaurant = Resturant.new 
  end

  def create
    @restaurant = Restaurant.create(rest_params)
    byebug
    redirect_to @restaurant
  end


  private 

  def rest_params 
    params.require(:restaurant).permit(:name)
  end
end
