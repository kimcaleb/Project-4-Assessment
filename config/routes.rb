Rails.application.routes.draw do
  root "widgets#index"
  resources :widgets, only: [:index, :create, :new]
  get "/widgets/:id", to: "widgets#destroy"
end
