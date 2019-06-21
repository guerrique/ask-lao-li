Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tirages do
    resources :traits, only: [:new, :create]
  end

  resources :tirages, only: [:edit] do
    member do
      patch :set_hexagramme
    end
  end

end



# resources :tirages, only: [:new, :create, :edit, :update] do
#   member do
#     patch :set_jet1, :set_jet2, :set_jet3, :set_jet4, :set_jet5, :set_jet6, :set_hexagramme
#   end
# end
