Rails.application.routes.draw do
  resources :hinos, only: :show, param: :numero
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
