source "https://rubygems.org"

gemspec

rails_version = ENV.fetch("RAILS_VERSION", "4.2")

if rails_version == "master"
  rails_constraint = { github: "rails/rails" }
else
  rails_constraint = "~> #{rails_version}.0"
end

gem "rails", rails_constraint

group :development, :test do
  gem "pry"
  gem "ember-cli-rails", github: "thoughtbot/ember-cli-rails"
  gem "webdrivers", "~> 4.0"
end

group :test do
  gem "poltergeist", "~> 1.8.0"
  gem "rspec-rails", "< 4.0"
end
