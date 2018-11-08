Rails.application.routes.draw do



    resources :chats do
      resources :messages, :subscriptions
    end

  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  delete '/chats/:chat_id/subscriptions/delete', to: 'subscriptions#destroy'

  mount ActionCable.server => '/cable'

end
