Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => "cocktails#index"
  resources :cocktails do
   resources :doses, only: [:new, :create]
   resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
end
