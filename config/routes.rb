Rails.application.routes.draw do
  post :login, to: 'auth#login'
  post :signup, to: 'auth#signup'
  post '/:provider',      to: 'auth#authenticate'

  get '/me', to: 'api#show'
  put '/me', to: 'api#update'
end
