Rails.application.routes.draw do
  resources :gardens do
  	resources :plants, only: [:new, :create]
  end
  resources :plants, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# www.com/gardens/5/plants/7 -> destroy

# www.com/plants/7