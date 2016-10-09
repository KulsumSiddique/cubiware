source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass'
gem 'haml-rails'
gem 'jquery-datatables-rails', '~> 3.3.0'
gem 'faker' # for generating seeds

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'rspec_api_documentation'

# gem 'capistrano-rails', group: :development

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem "codeclimate-test-reporter", require: false
  gem 'database_cleaner'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'guard-rspec', require: false
  gem 'guard-rake', require: false
  gem 'guard-bundler', require: false
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
end
