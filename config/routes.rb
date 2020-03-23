Rails.application.routes.draw do
  resources :feeds
  get 'main' => 'feeds#main'

  root :to => 'feeds#main'
end
