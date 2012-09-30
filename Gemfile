source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'pg'
gem 'tilt'
#gem 'rvm-capistrano'
gem 'execjs'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', :platforms => :ruby
gem 'heroku'
gem 'thin'
gem 'taps'

group :development, :test do
  #gem 'mysql2'
  gem 'taps', :require => false # has an sqlite dependency, which heroku hates
  gem 'pg'
  gem 'turn'
  gem 'rspec-rails' #, "~> 2.8"
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :production do
  gem 'pg'
  gem 'thin'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
gem 'rvm-capistrano'
#gem 'capistrano'

# To use debugger
# gem 'debugger'
