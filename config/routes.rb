Rails.application.routes.draw do

  resources :articles
    root 'articles#index'
#  get 'sessions/create'
#  get 'sessions/destroy'

  resources :users
    get 'users/new'
    # get 'articles/new'
    # get 'articles/create'
    # get 'articles/destroy'

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

end
