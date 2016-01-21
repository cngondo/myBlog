Rails.application.routes.draw do


  resources :articles

    # get 'articles/new'

    # get 'articles/create'

    # get 'articles/destroy'
  root 'articles#index'

end
