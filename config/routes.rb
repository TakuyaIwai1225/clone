Rails.application.routes.draw do
  resources :clones do
  get '/home', to: 'clones#home'
    collection do
      post :confirm
    end
  end
end