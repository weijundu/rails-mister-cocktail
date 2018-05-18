Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:show, :new, :create, :edit, :update] do
      resources :doses, only: [:new, :create, :destroy]
  end

  root to: "cocktails#index"
end

