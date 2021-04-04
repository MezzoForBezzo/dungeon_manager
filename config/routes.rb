Rails.application.routes.draw do
  get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :campaigns do
    resources :campaign_sessions
  end
  root 'pages#home'
end
