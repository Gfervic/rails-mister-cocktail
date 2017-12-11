Rails.application.routes.draw do
  root "cocktails#index"

  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create]
  end

  resources :ingredients, only: [:show]

  resources :doses, only: [:destroy]

end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
