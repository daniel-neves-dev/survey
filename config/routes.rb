Rails.application.routes.draw do
  get '/index', to: 'pages#index'
  root 'pages#landing_page'
end
