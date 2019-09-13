# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   1
Restaurant.destroy_all
Pizza.destroy_all

Restaurant.create!([{
  name: "Sottocasa NYC",
  address: "298 Atlantic Ave, Brooklyn, NY 11201",
},
{
  name: "PizzArte",
  address: "69 W 55th St, New York, NY 10019",
},
{
  name: "San Matteo NYC",
  address: "1559 2nd Ave, New York, NY 10028"
}])

Pizza.create!([{
  name: "Cheese",
  ingredients: "cheese"
},
{
  name: "Pepperoni",
  ingredients: "cheese and pepperoni"
},
{
  name: "Hawaiwan",
  ingredients: "cheese and ham and pineapple"
}])

# PizzaRest.create!([{
#   pizza_id: 8,
#   restaurant_id: 10
# },
# {
#   pizza_id: 9,
#   restaurant_id: 11
# },
# {
#   pizza_id: 11,
#   restaurant_id: 12
# }])

puts " file is seeded "
