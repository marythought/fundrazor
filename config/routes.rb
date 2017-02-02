Rails.application.routes.draw do
  resources :social_shares
  resources :campaigns do
    resources :solicitations do
      resources :donations
      collection do
        post 'email'
      end
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'campaigns#index'
end
