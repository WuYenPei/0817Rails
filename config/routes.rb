Rails.application.routes.draw do
  #get "/notes",to:"notes#index"
  #get "/notes/new",to:"notes#new"
  get "/", to: "notes#index"
  resources :notes


  get "/hello",to: "pages#main"
  get "/about",to: "pages#about"
  get "/users",to:"users#profile"
end






