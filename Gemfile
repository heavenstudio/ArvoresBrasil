source 'http://rubygems.org'

#gem 'rails', '3.1.0.rc8'
gem 'rails', '3.2.0.rc2'

#gem 'mysql2', '0.3.6'
gem 'mysql2', '0.3.10', group: :production
gem 'sqlite3', group: [:development, :test]

gem "will_paginate", :git => 'git://github.com/wantful/will_paginate.git'

#gem 'nifty-generators'

# Asset template engines
group :assets do
  gem 'sass-rails', "  ~> 3.2.3"
  gem 'coffee-rails', "~> 3.2.1"
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'guard-rspec'
  gem 'growl'
  gem 'simplecov', require: false
end
