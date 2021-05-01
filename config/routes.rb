Rails.application.routes.draw do
  resources :familymembers
  root 'familymembers#index'
  get 'familymembers/aboutus'
  get 'familymembers/contactus'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
