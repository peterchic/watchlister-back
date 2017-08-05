Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :watchlists, only: [:index, :create, :destroy, :show, :update]
      resources :movies, only: [:index, :show, :create, :destroy, :update]
      resources :watchlist_movies, only: [:index, :create, :destroy]
    end
  end
end
