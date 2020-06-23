source 'http://rubygems.org'
ruby "2.5.5"

gem "blacklight", "6.2.0"
gem 'sprockets', '>= 3.7.2'
gem 'nokogiri', '>= 1.10.8'
gem 'appsignal'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'#, '>= 5.2.4.2' #'4.2.11.1'
gem 'actionview'#, '>= 5.2.4.2' # '>= 4.2.11.1'
gem 'activesupport'
gem 'actionpack'
gem "rest-client", ">= 1.8.0"
gem "dotenv-rails"
gem "dotenv-deployment"
gem 'httpclient'
gem "websocket-extensions", ">= 0.1.5"
gem "kaminari", ">= 1.2.1"
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '1.3.13'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
 #gem 'therubyracer', platforms: :ruby

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]

#devise
gem "devise", ">= 4.7.1"

gem 'rails_autolink'
# Use jquery as the JavaScript library
gem 'jquery-rails','4.2.1'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'openseadragon'

gem "rubyzip", ">= 1.3.0"

# Use font-awesome for icons
gem 'font-awesome-sass', '~> 4.3.0'

#static pages gem
gem 'high_voltage', '~> 3.1'

gem 'blacklight-gallery'

gem 'blacklight-maps'
gem 'leaflet-rails','0.7.7'

gem "blacklight_range_limit"

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'cucumber-rails', :require => false # Set require = false to get rid of a warning message
  gem 'database_cleaner'
  gem 'webrat'
  gem 'guard-rspec'
  gem 'poltergeist'
  gem 'xray-rails'
  gem 'selenium-webdriver'
  gem 'webrick'
end

group :test do
  gem 'capybara'
  # Following two gems are following the setup proposed in the RoR tutorial
  # at http://ruby.railstutorial.org/chapters/static-pages#sec-advanced_setup
  gem 'rb-inotify', :require => false
  gem 'libnotify' if /linux/ =~ RUBY_PLATFORM
  # Spork support
  gem 'webmock'
  gem 'vcr'
  gem 'capybara-email'
  # gem 'simplecov'
  # gem 'simplecov-rcov'
end

# gem 'coveralls', '~> 0.8', require: false

gem 'rsolr', '~> 1.0.6'
gem 'devise-guests', '~> 0.3'

gem 'google-analytics-rails', '1.1.1'
