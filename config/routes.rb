Rails.application.routes.draw do
	root "users#index"
  resources :educations
  resources :organizations
  resources :personal_infos
  resources :users
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
