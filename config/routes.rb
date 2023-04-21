Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'counters#index'
  get '/counters/:id', to: 'counters#show', as: 'counter'
  post 'increment_counter', to: 'counters#increment', as: 'increment_counter'
end
