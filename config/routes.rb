Rails.application.routes.draw do
  #get "/notes",to:"notes#index"
  #get "/notes/new",to:"notes#new"
  get "/", to: "notes#index"
  resources :notes


  get "/hello",to: "pages#main"
  get "/about",to: "pages#about"



  
  resources :users, only: [:create] do
    #before_action :aaaa, only: [:index, :show, :edit]
  #get "/users",to:"users#profile"
  collection do
    get :sign_up
    get :sign_in
    end
  end

  post "/users/sign_in", to: "sessions#create"
end


