Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blog
  root 'blog#index'

  get 'pages/aboutme', to: 'pages#aboutme', as: 'aboutme'

end
