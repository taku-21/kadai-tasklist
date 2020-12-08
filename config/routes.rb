Rails.application.routes.draw do
   root to: "tasks#index"
   root to: "toppages#index"
   
   get "login", to: "sessions#new"
   post "login", to: "sessions#create"
   delete "logout", to: "sessions#destroy"
   
   get "signup", to: "users#new"
   
   resources :tasks,
             :users, only: [:new, :create]
end
