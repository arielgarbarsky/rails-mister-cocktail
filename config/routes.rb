Rails.application.routes.draw do
  ## COCKTAILS
  # See all cocktails
    # get "cocktails", to: "cocktails#index"

  # Can see any cocktail and each details
    # get "cocktails/:id", to: "cocktails#show", as: :cocktail

  # Create a new cocktail
    # get "cocktails/new", to: "cocktails#new"
    # post "cocktails", to: "cocktails#create"
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: [:destroy]
end
