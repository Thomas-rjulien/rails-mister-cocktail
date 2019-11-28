Rails.application.routes.draw do
  resources :cocktails, except: %i[destroy edit update] do
    resources :doses, only: %i[new create destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
