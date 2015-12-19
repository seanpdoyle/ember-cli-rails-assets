source "https://rubygems.org"

gemspec

gem "appraisal"
gem "rails", "~> 4.2.5"

group :development, :test do
  gem "pry"
  gem "ember-cli-rails", github: "thoughtbot/ember-cli-rails", branch: "remove-assets"
end

group :test do
  gem "poltergeist", "~> 1.8.0"
  gem "rspec-rails"
end
