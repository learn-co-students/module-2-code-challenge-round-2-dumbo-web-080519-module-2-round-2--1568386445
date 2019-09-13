class Restaurant < ApplicationRecord
  has_many :pizzas

  def self.search(search)
    if search
      name = Restaurant.find_by(name: search)
      return name
    else
      return Restaurant.all
    end
  end
end
