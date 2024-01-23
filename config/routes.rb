Rails.application.routes.draw do
  resources :users
  get 'post/index'
  get 'postingan/index'
  get '/index' => 'home#index'
  get '/post' => 'post#index'
  get '/artikel'=> 'home#artikel'
  get '/about' =>'home#about'
  get '/' => 'home#index'
  get '/post/detail/:id' => 'post#detail'
  get '/post/input' => 'post#input'
 post '/post/create' => 'post#create'

 get '/post/edit/:id' => 'post#edit'
 post '/post/update/:id' => 'post#update'
 get '/post/delete/:id' => 'post#delete'
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 get "/home", to: "home#index"
  root "home#index"
end
