# Shopping Cart
![Ubuntu version](https://img.shields.io/badge/Ubuntu-16.04%20LTS-orange.svg)
![Rails version](https://img.shields.io/badge/Rails-v5.0.0-blue.svg)
![Ruby version](https://img.shields.io/badge/Ruby-v2.3.1p112-red.svg)


We will create Ruby on Rails shopping cart where users could be able to add and remove products from to Shopping Cart. And you will be able to see total amount, user authentication and much more.


# Create a App
```console
$ rails new shopping_cart
```
# Add therubyracer rubygems
In Gemfile
```console
gem 'therubyracer'
```
Note: 
Because there is no Javascript interpreter for Rails on Ubuntu Operation System, we have to install `Node.js` or `therubyracer` to get the Javascript interpreter.


Next, we'll create home page about this page frequently asked questions page contact us page for our application.
So lets generate static pages
```console
$ rails g controller page home about faqs contact
```

And now we will set home page.        
In `config/routes.rb`, 
```ruby
Rails.application.routes.draw do
	root 'page#home'

  get 'page/about'

  get 'page/faqs'

  get 'page/contact'
end
```

Next thing we're gonna create scaffold so that we're able to add products to our application.
```console
$ rails g scaffold product title:string description:text image_url:string price:integer category:string subcategory:string
$ rake db:migrate
```

If we go to 'http://localhost:3000/products', we can create a new product.
![image](https://github.com/TimingJL/shopping_cart/blob/master/pic/crud.jpeg)


