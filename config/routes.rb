Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'counters#show'
  get '/counters/:id', to: 'counters#show', as: 'counter'
  post 'reset_counter', to: 'counters#reset', as: 'reset_counter'
  patch '/counters/:id', to: 'counters#update', as: 'add_field'
end
