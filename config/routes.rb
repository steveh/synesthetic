Synesthetic::Application.routes.draw do

  resource :account, :only => [:show]
  scope "account" do
    get :login, :as => :login, :to => "accounts#new"
    post :login, :to => "accounts#create"
    get :logout, :as => :logout, :to => "accounts#destroy"
  end

  resource :letters, :only => [:edit, :update]

  resource :dimensions, :only => [:update]

  resources :texts, :except => :destroy

  root :to => "accounts#show"

end