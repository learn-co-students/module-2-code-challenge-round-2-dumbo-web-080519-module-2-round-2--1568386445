class PizzaRest < ApplicationRecord
  belongs_to :pizza
  belongs_to :restaurant
end
