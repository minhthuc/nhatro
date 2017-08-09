Rails.application.routes.draw do
  root "home#index"
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"
  devise_for :users
end
