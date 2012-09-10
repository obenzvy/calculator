Calculator09052012::Application.routes.draw do

  resources :rewards

  root :to => "Issuers#index"

  resources :cards

  resources :issuers

  get "homepage" => "Users#homepage", :as => :homepage
  get "homepage_rewards" => "Users#homepage_rewards", :as => :homepage_rewards

end
