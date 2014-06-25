Spree::Core::Engine.routes.draw do

  namespace :admin do
    resources :slideshows do
      resources :slides do
        collection do
          post :update_positions
        end
      end
    end
    
    resource :slide_settings
  end

  localized do
    scope module: 'api', :defaults => { :format => 'json' } do
      get 'api/slides' => 'slides#index'
    end
  end
end
