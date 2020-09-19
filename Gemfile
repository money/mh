# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'aasm', '~> 5.0.6'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'bootstrap', '~> 4.4.1'
gem 'devise', '~> 4.7.1'
gem 'jbuilder', '~> 2.7'
gem 'passenger', '~> 6.0.4'
gem 'pg', '~> 1.2.1'
gem 'puma', '~> 3.12'
gem 'pundit', '~> 2.1.0'
gem 'rack-mini-profiler', '~> 1.1.3'
gem 'rails', '~> 6.0.0'
gem 'redcarpet', '~> 3.5.0'
gem 'redis', '~> 4.1.3'
gem 'rubocop', require: false
gem 'sass-rails', '~> 5'
gem 'slim', '~> 4.0.1'
gem 'sqlite3'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.1.1'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'capistrano', '~> 3.11', require: false
  gem 'capistrano-passenger'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
