source "https://rubygems.org"

gemspec

rails_version = ENV.fetch("RAILS_VERSION", "6.0")

if rails_version == "main"
  rails_constraint = { github: "rails/rails" }
  gem "rack", "< 3" # To compatible with capybara. https://github.com/teamcapybara/capybara/issues/2640
else
  rails_constraint = "~> #{rails_version}"
end

gem "rails", rails_constraint
gem "webrick"

group :development, :test do
  gem "pry"
  gem "ember-cli-rails", github: "thoughtbot/ember-cli-rails"
end

group :test do
  gem "cuprite"
  gem "rspec-rails"
end
