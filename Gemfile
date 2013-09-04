source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.0'

gem 'bootstrap-sass', '~> 2.3.2.2'
gem 'coffee-rails', '~> 4.0.0'
gem 'compass-rails', :github => 'milgner/compass-rails', :branch => 'rails4'
gem 'devise', '~> 3.0.0.rc' # I think this will allow bundle update to work. We can take off the version restriction once the final version comes out

gem 'globalize3', github: 'svenfuchs/globalize3', branch: 'rails4'
gem 'haml-rails'
gem 'pg'

gem 'sass-rails', '~> 4.0.0'

gem 'paper_trail', github: 'airblade/paper_trail', branch: 'master'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'rails_admin'

gem 'jbuilder', '~> 1.0.1'

gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

####
#
# Emails
#
gem 'postmark-rails'
gem 'mail_form', github: 'plataformatec/mail_form'

group :development, :test do
  gem 'debugger'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'guard-rspec', '2.5.0'
end

group :test do
  gem 'selenium-webdriver', '2.0'
  gem 'capybara'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'rb-fsevent', '0.9.3', :require => false
  gem 'growl', '1.0.3'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
#gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

