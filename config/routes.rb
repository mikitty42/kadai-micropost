Rails.application.routes.draw do
  resources :microposts do
    collection do
      post :confirm
end
