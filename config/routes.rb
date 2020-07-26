Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :algorithms, only: [:index] do
        resources :examples, only: [:create, :update, :show, :index]
      end
    end
  end

  get "/api/v1/algorithms/idxe" => 'api/v1/algorithms#idxe'

end