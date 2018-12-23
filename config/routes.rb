Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'categories/index'
      get 'categories/show'
    end
  end
  get 'categories/index'
  get 'categories/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :vendors, :products
    end
  end
end
