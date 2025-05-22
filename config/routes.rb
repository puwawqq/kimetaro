Rails.application.routes.draw do
  root "rank#index"
  get "rank/new" => "rank#new"
  post "rank" => "rank#create"
  get "login" => "sessions#new", as: :new_session
  post "login" => "sessions#create", as: :create_session
  delete "logout" => "sessions#destroy", as: :destroy_session
end
