Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
    
  get 'welcome/index'

  resources :docs
  authenticated :user do
    root "docs#index", as: "authenticated_root"
  end
  
  root 'welcome#index'
end
