Rails.application.routes.draw do



    resources :chats do
      resources :messages, :subscriptions
    end

  resources :users
  post '/login', to: 'auth#create'

  mount ActionCable.server => '/cable'

end
