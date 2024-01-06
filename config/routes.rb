Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :finds do
    collection do
      get :article
    end
  end


  root to: 'finds#index'
end
