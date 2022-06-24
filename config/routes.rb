Rails.application.routes.draw do
  devise_for :candidates
  devise_for :voters
  devise_for :admins
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
