Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :contacts do
    collection do
      get "export", action: :export, as: :export
    end
  end

  resources :users

  root "contacts#index"
end
