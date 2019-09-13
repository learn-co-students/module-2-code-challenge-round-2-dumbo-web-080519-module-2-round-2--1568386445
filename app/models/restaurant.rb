class Restaurant < ApplicationRecord
    has_many :pizzas

    def self.search(search)
        if name
            where(['name LIKE ?', "%#{search}%"])
        end
    end
end
