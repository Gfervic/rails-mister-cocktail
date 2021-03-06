Rails.application.routes.draw do

  root "cocktails#index"

  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :ingredients, only: [:show]

  resources :doses, only: [:destroy]

  resources :reviews, only: [:destroy]

  mount Attachinary::Engine => "/attachinary"

end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
