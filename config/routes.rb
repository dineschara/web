Rails.application.routes.draw do
  get 'postingan/index'
  get '/index' => 'home#index'
  get '/postingan' => 'postingan#index'
  get '/artikel'=> 'home#artikel'
  get '/about' =>'home#about'
  get '/' => 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 get "/home", to: "home#index"
  root "home#index"
end
