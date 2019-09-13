class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show 
    @pizza = Pizza.find(params[:id])
  end

  def new 
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create 
    @pizza = Pizza.create(pizza_param)
    
    redirect_to @pizza
  end

  private

  def pizza_param
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end
end
