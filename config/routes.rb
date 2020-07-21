Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails
  resources :doses, only: [:new, :create, :edit, :delete]
end
