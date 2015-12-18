source "https://rubygems.org"

gemspec

gem "rails", "~> 4.2.5"

group :development, :test do
  gem "pry"
end

group :test do
  gem "ember-cli-rails", github: "thoughtbot/ember-cli-rails", branch: "remove-assets"

  gem "poltergeist", "~> 1.8.0"
  gem "rspec-rails"
end
