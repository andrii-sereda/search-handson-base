Rails.application.routes.draw do
  resources :instance_types, only: :index do
    collection do
      get 'search'
    end
  end

  root 'instance_types#index'
end
