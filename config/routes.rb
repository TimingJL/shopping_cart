Rails.application.routes.draw do
  resources :products
	root 'page#home'

  get 'page/about'

  get 'page/faqs'

  get 'page/contact'
end
