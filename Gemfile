# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"
gem "aws-sdk-s3", require: false
gem "bootsnap", require: false
gem "bootstrap", "~> 5.1.3"
gem "devise"
gem "haml"
gem "importmap-rails"
gem "jbuilder"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.1"
gem "redis", "~> 4.0"
gem "sassc-rails"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "dotenv-rails"
  gem "factory_bot_rails"
end

group :test do
  gem "capybara"
  gem "rails-controller-testing"
  gem "rspec-rails"
  gem "selenium-webdriver"
end

group :development do
  gem "annotate"
  gem "rubocop", require: false
  gem "rubocop-junit-formatter", require: false
  gem "rubocop-rails"
  gem "rubocop-thread_safety"
  gem "web-console"
end
