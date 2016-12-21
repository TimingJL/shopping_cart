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

If we go to `http://localhost:3000/products`, we can create a new product.
![image](https://github.com/TimingJL/shopping_cart/blob/master/pic/crud.jpeg)


We'll generate one more controller for our cart. Actually that will be cart index page where all items be appearing when use it will be selective in your shop.
```console
$ rails g controller cart index
```

# Add Users
And next thing we have to do is create user login and logout. So let's start by adding devise gems.


In Gemfile
```console
gem 'devise'
```

Run the bundle command to install it.

Next, we need to run the generator:
```console
$ rails generate devise:install
```

```console
Some setup you must do manually if you haven't yet:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views
```

First we need to set up the default URL options for the Devise mailer in each environment.
Here is a possible configuration for config/environments/development.rb:
```console
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```


And then we copy Devise views by the command:
```
$ rails g devise:views
```

Then we paste
```html

	<p class="notice"><%= notice %></p>
	<p class="alert"><%= alert %></p>
```

to the `app/views/layouts/application.html.erb`


Then we must run generate to create model for our users.
```console
$ rails g devise User
$ rake db:migrate
```

After restaring our rails server and going to `http://localhost:3000/users/sign_in`, we'll see:
![image](https://github.com/TimingJL/shopping_cart/blob/master/pic/login.jpeg)




To be continued...