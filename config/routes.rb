Rails.application.routes.draw do
  resources :customers, except: :delete
  resources :vehicles, except: :delete
end
