Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('/restaurants')
  resources :restaurants, only: [:index, :show, :new, :create]
  post 'restaurants/:restaurant_id', to: 'reviews#create', as: 'restaurant_reviews'
end
