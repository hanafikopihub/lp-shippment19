Rails.application.routes.draw do
  get 'error_pages/index'
  
  resources :pricelists do
    collection do
      get :get_price
    end
  end

  resources :couriers
  get 'admin/index'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
