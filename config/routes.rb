Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blog do
    collection do
      get 'search'
    end
  end
  root 'blog#index'

  get 'pages/aboutme', to: 'pages#aboutme', as: 'aboutme'
  get 'pages/guideline', to: 'pages#guideline', as: 'guideline'

end
