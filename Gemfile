source 'https://rubygems.org'

ruby File.read("#{Dir.pwd}/.ruby-version").chomp

gem 'rails', '4.2.0'

gem 'coffee-rails', '~> 4.0.0'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'nokogiri'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

group :doc do
  gem 'sdoc', '~> 0.4.0'
end

group :development, :test do
  gem 'byebug'
end

group :development do
  gem 'spring'
end

group :test do
  # https://github.com/DatabaseCleaner/database_cleaner/issues/317
  # There is an issue in v1.4.0 where the schema migration table
  # gets cleared, which ends up requiring a hard refresh
  # of the database to fix.
  gem 'database_cleaner', '~> 1.3.0'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end
