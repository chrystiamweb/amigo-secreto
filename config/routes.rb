require 'sidekiq/web'

Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users, :controllers => { registrations: 'registrations' }
  mount Sidekiq::Web => 'sidekiq'  
end
