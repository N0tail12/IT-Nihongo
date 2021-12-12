Rails.application.routes.draw do
  get 'static_pages/home'
  devise_for :users
  resources :comments
  resources :blogs do
      member do
          patch :update_status
      end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
