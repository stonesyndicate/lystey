source 'https://rubygems.org'

# Rails
gem 'rails', '4.2.3'

# Databases / Data-stores
gem 'pg'

# View Engine
gem 'haml'

# AWS / Paperclip
gem 'aws-sdk'
gem 'paperclip'

# Assets and Asset-related items
gem "autoprefixer-rails"
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'sass-rails'

# ReactJS
gem 'react-rails', '~> 1.0'

source 'https://rails-assets.org' do
  gem 'rails-assets-skeleton'
  gem 'rails-assets-normalize-css'
  gem 'rails-assets-reflux'
  gem 'rails-assets-bacon'
  gem 'rails-assets-bacon.jquery'
  gem 'rails-assets-bacon.model'
  gem 'rails-assets-spectrum'
  gem 'rails-assets-lodash'
end

# Capistrano and Capistrano-related items
gem 'capistrano-rails'
gem 'capistrano-bundler'
gem 'capistrano-rvm'
gem 'capistrano3-unicorn'

# JS-runtime
gem 'therubyracer', platforms: :ruby

# Environment Specific
group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'pry-rails'
  gem 'rename'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'guard'
  gem 'guard-rspec', require: false
end

group :test do
  gem 'shoulda-matchers'
end

group :production do
  gem 'unicorn'
end

# Third Party
gem 'enumerize'
gem 'friendly_id', '~> 5.1.0'
gem 'geocoder'
gem 'gmaps4rails'
gem 'librato-rails'
gem "nested_form"
