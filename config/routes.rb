Enegotiation::Application.routes.draw do

  devise_for :admins
  devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get "users/new"
  root to: 'site#home'

  match '/signup',    to: 'users#new',    via: 'get'
  match '/about',     to: 'site#about',   via: 'get'
  match '/team',      to: 'site#team',    via: 'get'
  match '/contact',   to: 'site#contact', via: 'get'

end
