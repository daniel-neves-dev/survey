Rails.application.routes.draw do
  resources :sections do
    post "question/create", to: "questions#create"
    get "question/edit", to: "questions#edit"
    patch "question/update", to: "questions#update"
  end

  resources :chapters
  resources :evaluations
  devise_for :users

  authenticated :user do
    root "pages#index"
  end

  unauthenticated :user do
    root "pages#landing_page", as: :unauthenticated
  end
end
