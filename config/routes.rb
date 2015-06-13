Rails.application.routes.draw do
  root to: 'home#index'

  resources :agents, only: [:show, :edit, :update] do
    resources :brokers
    resources :guides, only: [:index]
    get '/guides/edit', to: 'agents#guides', as: 'edit_guides'
    get '/links/edit', to: 'agents#links', as: 'edit_links'

  end
end
