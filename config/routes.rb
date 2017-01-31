Rails.application.routes.draw do
  resources :social_shares
  resources :donations
  resources :solicitations
  resources :campaigns
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'campaigns#index'
end
