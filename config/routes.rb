Enegotiation::Application.routes.draw do

  resources :participants

  resources :top_standing_entries

  resources :top_standings

  devise_for :admins
  devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get "users/new"
  root to: 'site#home'

  resources :contact_forms

  match '/signup',    to: 'users#new',    via: 'get'
  match '/about',     to: 'site#about',   via: 'get'
  match '/team',      to: 'site#team',    via: 'get'
  match '/contact',   to: 'site#contact', via: 'get'
  match '/faq',       to: 'site#faq', via: 'get'
  match '/overview',  to: 'site#overview', via: 'get'
  match '/videos',    to: 'site#videos', via: 'get'
  match '/rules',     to: 'site#rules', via: 'get'
  match '/standings', to: 'site#standings', via: 'get'
  match '/participants', to: 'site#participants', via: 'get'
  match '/terms',      to: 'site#terms', via: 'get'
  match '/privacy',      to: 'site#privacy', via: 'get'
  match '/sitemap',      to: 'site#sitemap', via: 'get'
  
  match '/dashboard', to: 'dashboard#index',  via: 'get'

end
