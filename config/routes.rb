Rails.application.routes.draw do


  root to: "cocktail#index"

  resources :cocktails, only: [:index, :show, :new, :create]

  # doses :new :create :destroy



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
