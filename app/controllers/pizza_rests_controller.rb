class PizzaRestsController < ApplicationController

  def new
    @pizzarest = PizzaRest.new
    @restaurants = Restaurant.all
    @pizzas = Pizza.all
  end

  def create
    @pizzarest = PizzaRest.create(pizza_rest_params())
    redirect_to @pizzarest
  end

  def show
    @pizzarest = PizzaRest.find(params[:id])
  end


  private
  def pizza_rest_params
    params.require(:pizza_rest).permit(:pizza_id, :restaurant_id)
  end
end
