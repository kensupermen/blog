Rails.application.routes.draw do

  devise_for :users

  authenticated :user do
    root 'api/v1/articles#index', as: :authenticated_root
  end


  #  namespace :api do
  namespace :api do
    namespace :v1 do

      get 'search' => 'articles#search'
      get 'all_articles' => 'articles#get_all_articles'

      resources :articles do
        resources :comments
      end


    end
  end


  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
