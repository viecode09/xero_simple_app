Rails.application.routes.draw do
  resources :contacts do
    resources :invoices
  end
  get '/contacts/:id/create_invoice', to: "contacts#create_invoice"
  root to: "contacts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
