class Pizza < ApplicationRecord
  has_many :pizza_rests
  has_many :restaurants, through: :pizza_rests
end
