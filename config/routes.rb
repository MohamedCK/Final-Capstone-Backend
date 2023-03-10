Rails.application.routes.draw do
    # ...
    mount Rswag::Api::Engine => '/api-docs'
    mount Rswag::Ui::Engine => '/api-docs'
    # ...
  scope :api, defaults: { format: :json } do
    scope :v1 do
      devise_for :users,
        controllers: {
          registration: 'api/v1/users/registrations',
          sessions: 'api/v1/users/sessions'
        },
        path: ""
    end
  end

  namespace :api do 
    namespace :v1 do 
      resources :users, only: [:index] do 
        resources :reservations, only: [:index, :create, :destroy], :path => 'reservations'
      end
      resources :motorcycles, only: [:index, :show, :create, :update]
      get 'all_motorcycles/', to: 'motorcycles#all_motorcycles', as: 'all_motorcycle'
      patch 'motorcycle/:id/availability', to: 'motorcycles#availability', as: 'Motorcycle_availability'
    end
  end
end
