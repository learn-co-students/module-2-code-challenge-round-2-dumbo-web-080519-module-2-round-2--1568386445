class PizzasController < ApplicationController

  # before_action only: [:show, :edit, :update]

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
    @pizza = Pizza.create(pizza_params)
    if @pizza.valid?
      redirect_to @pizza
    else
      flash[:errors] = @pizza.errors.full_messages
      redirect_to new_pizza_path
    end
  end

  private

  # def set_pizza
  #   @pizza = Pizza.find(params[:id])
  # end

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end
end
