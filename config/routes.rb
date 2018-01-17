Rails.application.routes.draw do
  root to: "pages#home"
  get 'contact', to: "pages#contact"
  get 'about', to: "pages#about"
  get 'restaurants', to: "restaurants#index"
  post 'restaurants', to: "restaurants#create"
  get 'restaurants/:id', to: "restaurants#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
