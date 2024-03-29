Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :todos do
    resources :items
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get '/api_docs', to: 'api_docs#show'
  mount SwaggerUiEngine::Engine, at: 'assets/config/api_docs'


  # Defines the root path route ("/")
  # root "posts#index"
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
