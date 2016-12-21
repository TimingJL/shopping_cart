Rails.application.routes.draw do
  devise_for :users
  get 'cart/index'

  resources :products
	root 'page#home'

  get 'page/about'

  get 'page/faqs'

  get 'page/contact'
end
