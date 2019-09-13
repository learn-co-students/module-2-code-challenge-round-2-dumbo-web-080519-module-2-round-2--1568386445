class Restaurant < ApplicationRecord
  has_many :pizza_rests
  has_many :pizzas, through: :pizza_rests
end
