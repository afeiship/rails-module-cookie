# rails-module-cookie
> Rails module for cookie login with auth token.


## Step by step:
+ New project & Generate controller & Generate model:
```bash
## new proejct:
rails new .

## generate controller && model:
rails g controller pages welcome
rails g controller users new create login
rails g model User username:string email:string password_digest:string

## create db:
rake db:create db:migrate
```

+ use `bcrypt` libray:
```ruby
gem 'bcrypt', '~> 3.1.7'
```

+ add routes:
```ruby
  get 'users/new'

  get 'users/create'

  get 'users/login'

  root :to => 'pages#welcome' 
```


+ add auth_token to Users table;
```bash
rails g migration AddAuthTokenToUsers auth_token:string
rake db:create db:migrate
```

+ register a new user:
```conf
user:afei
password:afei@123.com
```

## Attention:
+ DON't OPEN Crossdomain plugin,OR you will GET SOME ERROR!!!!