source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.rc1', '< 5.1'
# Use sqlite3 as the database for Active Record
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sqlite3'

gem 'jwt'
gem 'httpclient'
gem 'responders', '~> 2.0'
gem 'active_model_serializers', '~> 0.8.2'
gem 'bcrypt', '~> 3.1.7'
gem 'sinatra'
gem 'omniauth'
gem 'omniauth-instagram'
gem 'figaro'

gem 'thin', group: :development


group :test do
  gem 'webmock'
  gem 'shoulda'
  gem 'rspec-collection_matchers'
  gem 'webmock'
end


group :development, :test do

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rspec-rails'
  gem 'byebug', platform: :mri
  gem 'coveralls', require: false
  gem 'factory_girl_rails'
  gem 'ffaker'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
