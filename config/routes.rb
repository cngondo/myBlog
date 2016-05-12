Rails.application.routes.draw do
  get 'users/new'

#  get 'sessions/create'
#
#  get 'sessions/destroy'
  resources :users
  resources :articles

    # get 'articles/new'

    # get 'articles/create'

    # get 'articles/destroy'
  root 'articles#index'

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

end
