Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :images do
        member do
          get :crop
        end
      end
    end
  end
end
