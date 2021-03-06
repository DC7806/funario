source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'settingslogic'
gem 'kaminari'
# layout
gem 'bootstrap-sass', '~> 3.3.6'
gem "font-awesome-rails"
# file upload
gem 'carrierwave', '~> 1.0'
gem 'mini_magick'
# editor
gem 'ckeditor', github: 'galetahub/ckeditor'
# backend Login
gem 'devise'
# article tagging
gem 'acts-as-taggable-on', github: 'mbleigh/acts-as-taggable-on'
# search
gem 'pg_search'
# schedule automation
gem 'whenever', require: false
gem 'jquery-ui-rails'
gem 'rails_sortable'
gem 'bootstrap-datepicker-rails'
gem "cocoon"

# error pages
gem 'exception_handler', '~> 0.7.7.0'

gem 'listen', '>= 3.0.5', '< 3.2'

group :production do
  gem 'pg', '~> 0.18'
  # sitemap
  gem 'sitemap_generator', require: true 
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'capistrano', '~> 3.10', '>= 3.10.1'
  gem 'capistrano-rails', '~> 1.3', '>= 1.3.1'
  gem 'capistrano-rbenv', github: "capistrano/rbenv"
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'awesome_print', git: 'https://github.com/awesome-print/awesome_print.git', branch: 'master'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
