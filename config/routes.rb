Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root "pages#index"
  end

  unauthenticated :user do
    root "pages#landing_page", as: :unauthenticated
  end
end
