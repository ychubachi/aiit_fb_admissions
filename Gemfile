source 'http://rubygems.org'

gem 'rails', '3.1.3'

group :production do
  gem 'pg'
end
group :development, :test do
  gem 'sqlite3'
end

group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
end
group :test, :development do
  gem "rspec-rails", "~> 2.6"
end

gem 'thin'
gem 'mogli'
gem 'dalli'
gem "haml-rails"
# http://stackoverflow.com/questions/8717198/foreman-only-shows-line-with-started-wit-pid-and-nothing-else
gem 'foreman', '0.27.0'

gem 'execjs'
gem 'therubyracer'


