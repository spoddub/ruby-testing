# frozen_string_literal: true

source 'https://rubygems.org'

gem 'minitest', '~> 5.25'
gem 'minitest-power_assert', '~> 0.3.1'

group :test do
  gem 'simplecov', '~> 0.22', require: false
  gem 'simplecov-lcov', '~> 0.8.0', require: false
end

group :development, :test do
  # Совместимые с Ruby 2.6 версии линтеров
  gem 'rubocop', '1.50.2', require: false
  gem 'rubocop-minitest', '0.28.0', require: false
end
