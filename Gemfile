source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

gem 'rails', '~> 5.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'rubocop', '~> 0.59.0', require: false
gem 'devise', '~> 4.4.3'
gem 'devise_token_auth', '~> 0.2.0'
gem 'versionist', '~> 1.7.0'
gem 'active_model_serializers', '~> 0.10.7'
gem 'wor-paginate', '~> 0.1.4'
gem 'sidekiq', '~> 4.1.2'
gem 'slim-rails', github: 'slim-template/slim-rails'

group :development, :test do
  gem 'faker', '~> 1.9.1'
  gem 'factory_bot_rails', '~> 4.11.1'
  gem 'rspec-rails', '~> 3.8.0'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1.2'
  gem 'database_cleaner'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
