source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails',     github: 'rails/rails'
gem 'arel',      github: 'rails/arel'
gem 'activerecord-deprecated_finders', github: 'rails/activerecord-deprecated_finders'

gem 'pg'

group :production do
	gem 'thin'
end
group :development do
  gem 'railroady'
	gem "better_errors"
	gem "binding_of_caller"
	gem "quiet_assets"
end

gem 'minitest-rails'

group :test do
	gem 'poltergeist'
	gem 'minitest-rails-capybara'
	gem 'turn'
	gem 'factory_girl'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sprockets-rails', github: 'rails/sprockets-rails'
  gem 'sass-rails',   github: 'rails/sass-rails'
  gem 'coffee-rails', github: 'rails/coffee-rails'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# Authentication
gem 'devise', github: 'plataformatec/devise', branch: 'rails4'

# Twitter Bootstrap
gem 'bootstrap-sass'
gem 'bootswatch-rails'
