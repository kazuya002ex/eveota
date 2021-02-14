source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'activerecord-import'
gem 'active_model_serializers'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'jbuilder', '~> 2.7'
gem 'mysql2', '~> 0.5'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.2', '>= 6.1.2.1'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'simplecov', require: false
end

group :development do
  gem 'listen'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
