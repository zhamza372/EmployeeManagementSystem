source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '6.0.3.2'
# Use mysql2 as the database for Active Record
gem 'mysql2', '0.5.3'
# Use Puma as the app server
gem 'puma', '4.3.5'
# Use SCSS for stylesheets
gem 'sass-rails', '6.0.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '4.3.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '5.2.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.10.0'
# Use devise for authentication
gem 'devise', '4.7.3'
# Use cancancan for authorization
gem 'cancancan', '3.1.0'
# For maintaining sequence
gem 'sequenceid', '0.0.7', git: "https://github.com/alisyed/sequenceid.git", branch: 'feature/change_activerecord_base_to_applicationrecord_in_sti_parent_class_method'
# For efficient loading of data
gem 'will_paginate', '3.3.0'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '1.4.8', require: false
# To handle file uploading
gem 'paperclip', '~> 6.0.0'
# To generate fake data
gem 'faker', '2.14.0'
# To add breadcrumbs
gem 'breadcrumbs_on_rails', '3.0.1'
# for background jobs
gem 'delayed_job_active_record', '4.1.4'
# To add charts
gem 'chartkick', '3.4.0'
# To maintain models history
gem 'audited', '4.9.0'

group :development, :test do
  gem 'pry', '0.13.1'
  gem 'pry-rails', '0.3.9'
  # Rspec for test cases
  gem 'rspec-rails', '4.0.1'
  # To create factories for testing
  gem 'factory_bot_rails', '6.1.0'
  gem 'database_cleaner-active_record', '1.8.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'listen'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end
