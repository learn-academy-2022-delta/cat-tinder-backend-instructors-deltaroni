# API INTRO

$ rails new cat_tinder_backend_instructors -d postgresql -T
$ cd cat_tinder_backend
$ git add remote ...
$ git checkout -b main
$ rails db:create
//bundle is a package manager for rails.  Let's install some dependencies.
$ bundle add rspec-rails
$ rails generate rspec:install
$ rails server

$ rails generate resource Cat name:string age:integer enjoys:text
$ rails db:migrate
$ rspec spec


## Rails Seed
```ruby

cats = [
    {
        name: "Mishi",
        age: 2,
        enjoys: "Terrorizing the neighbourhood"
    },
    {
        name: "Dexter",
        age: 3,
        enjoys: "Eating everything and throwing up later"
    },
    {
        name: "Lucifer",
        age: 5,
        enjoys: "Doing nothing all day long"
    },
    {
        name: "Lucious",
        age: 15,
        enjoys: "prowling after the ladycats"
    }
]

cats.each do |attributes|
    Cat.create(attributes)
    p "creating cat #{attributes}"
end
```

$ rails db:seed

## Trouble Shooting
 $ rails db:drop
 $ rails db:create
 $ rails db:migrate
 $ rails db:seed


# API CORS

### app/controllers/application_controller.rb
```ruby
class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
end
```

Cross-Origin Resource Sharing (CORS) is an HTTP-header based mechanism that allows a server to indicate any origins (domain, scheme, or port)
other than its own from which a browser should permit loading of resources. 

<!-- place this at the bottom of the GEMFILE -->
`gem 'rack-cors', :require => 'rack/cors'`


```ruby
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'  # <- change this to allow requests from any domain while in development.

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
``` 
`$ bundle install`