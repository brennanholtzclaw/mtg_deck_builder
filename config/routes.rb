Rails.application.routes.draw do
  root 'welcome#index'
  get '/browse', to: 'cards#index', as: 'cards'
  resources :cards, only: [:index, :show]
  resource :user, only: [:show]

  get '/users/:user_id/decks/:deck_id', to: 'user_decks#show'

end
