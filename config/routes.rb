Rails.application.routes.draw do
  resources :immunizations
  post '/verifySecretCombo', to: 'pacs#viewer'
  post '/generateToken', to: 'pacs#generateToken'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
