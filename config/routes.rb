Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index', as: "restaurants"
  get '/pizzas', to: 'pizzas#index', as: "pizzas"
  get 'restaurants/:id/show', to: 'restaurants#show', as: "restaurant"
  get '/pizzas/:id/show', to: 'pizzas#show', as: "pizza"
  get '/pizzas/new', to: 'pizzas#new', as: "new_pizza"
  post '/pizzas', to: 'pizzas#create'
end
