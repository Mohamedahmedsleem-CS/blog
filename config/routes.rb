Rails.application.routes.draw do
  # get 'articles/show'
  # get 'articles/index'
  # get 'articles/new'
  # get 'articles/edit'
  # get 'articles/create'
  # get 'articles/update'
  # get 'articles/destroy'
  root 'pages#home'
   resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
