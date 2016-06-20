Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      mount_devise_token_auth_for "User", at: 'auth'
      resources :tags, only: [:create, :index]
    end
  end
end


