Rails.application.routes.draw do

  resources :categories
  root 'static_pages#home'

  get '/help' , to: 'static_pages#help'
  get '/about', to: 'static_pages#about'

  resources :diagnoses
  resources :genotypes
  resources :chromosomes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
