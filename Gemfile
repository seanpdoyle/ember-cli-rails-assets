source "https://rubygems.org"

gemspec

gem "rails", ENV['RAILS_VERSION']
gem 'sprockets-rails', '< 3'
gem 'webrick'

group :development, :test do
  gem "pry"
  gem "ember-cli-rails", github: "thoughtbot/ember-cli-rails"
end

group :test do
  gem "cuprite"
  gem "rspec-rails"
end
