Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
  devise_for :users
  root 'posts#index'
  get "likes/:post_id/create" => "likes#create"
  get "likes/:post_id/destroy" => "likes#destroy"

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  get "login" => "users#login_form"
  post "login" => "users#login"
  get "logout" => "users#logout"
  get "users/:id/likes" => "users#likes"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  post "posts/:id/update" => "posts#update"
  delete "posts/:id/destroy" => "posts#destroy"
  get "posts/:id/edit" => "posts#edit"
  
  get "/" => "home#top"
  # home/top:URL。home#top = コントローラ名#アクション名
  #「get "/" => "コントローラ名#アクション名"」が、URLに"/"を指定し、localhost:3000が直接Topページにアクセスできる
  # Defines the root path route ("/")
  # root "articles#index"
  get "about" => "home#about"
end
