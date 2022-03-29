source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'materialize-sass'
gem 'devise'
gem 'paperclip', '~> 6.1'
gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref: '01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'
gem 'active_storage_validations'
gem 'will_paginate', '~> 3.1.0'
gem 'will_paginate-materialize'
gem 'friendly_id', '~> 5.4.0'
gem 'dotenv-rails', groups: [:development, :test]
gem 'stripe-rails'
gem 'aasm'
gem 'aws-sdk', '~> 2.3'
gem 'font-awesome-sass'


#group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  #gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
#end

group :development, :test do
  gem 'byebug'
  gem 'sqlite3'
end

group :production do
  gem 'pg', '~> 1.2.3'
  gem 'rails_12factor'
end

group :development do
	gem 'web-console', '>= 4.1.0'
	gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
