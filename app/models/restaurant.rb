class Restaurant < ApplicationRecord
    has_many :pizzas

    def self.search(search)
        if search
            restaurant = Restaurant.find_by(name: search)
        end
    end
end
