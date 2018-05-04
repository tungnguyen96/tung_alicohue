Rails.application.routes.draw do
  devise_for :administrators, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'company_info/index'

  root "front#index"


  get "/index" => "front#index"
  get "/intro" => "front#intro"
  get "/contact" => "front#contact"

  resources :company_info, only: :index
  resources :feedbacks, only: [:new, :create]
  resources :products,  only: :show

  resources :categories do
    resources :products, only: :index
  end
end
