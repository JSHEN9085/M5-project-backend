Rails.application.routes.draw do



    resources :chats do
      resources :messages, :subscriptions
    end

  resources :users

  mount ActionCable.server => '/cable'

end
