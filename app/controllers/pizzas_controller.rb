class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find([params[:id]])
  end

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      redirect_to restaurant_path(@pizza.restaurant_id)
    else
      redirect_to new_pizza_path
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients,:restaurant_id)
  end
end
