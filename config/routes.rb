Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    collection do #i dont need the id of a specific restaurant
      get :top  #same as get "restaurants/top"
    end
    member do #i need the id of the restaurant
      get :chef
    end
    resources :reviews, only: [:new,:create]
  end
  resources :reviews, only:[:destroy]
end


#restaurants/:id/reviews
