Rails.application.routes.draw do
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end

  devise_for :admins, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  scope module: :public do
    resources :customers, except: [:new]
    # get 'cusromers/index'
    # get 'cusromers/show'
    # get 'cusromers/edit'
  end
end
