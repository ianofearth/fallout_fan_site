Rails.application.routes.draw do
  resources :games do
    resources :reviews
  end
end
