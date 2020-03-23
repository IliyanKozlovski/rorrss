Rails.application.routes.draw do
  resources :feeds
  get 'main' => 'feeds#main'
end
