Matricula::Application.routes.draw do
  get "site/index"

  devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => "site#index"
end
