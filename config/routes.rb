Rails.application.routes.draw do
  resources :sightings
  resources :titans do
    resources :sightings, only: [:new, :index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
