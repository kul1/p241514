Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  post ':controller(/:action(/:id))(.:format)'
  get ':controller(/:action(/:id))(.:format)'
  get '/logout' => 'sessions#destroy', :as => 'logout'
  get '/auth/failure' => 'sessions#failure'
  get '/auth/:provider/callback' => 'sessions#create'
  post '/auth/:provider/callback' => 'sessions#create'
  resources :sessions
  resources :identities
  root :to => 'mindapp#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
