source "https://rubygems.org"

gemspec

rails_version = ENV.fetch("RAILS_VERSION", "6.0")

if rails_version == "main"
  rails_constraint = { github: "rails/rails" }
else
  rails_constraint = "~> #{rails_version}"
end

gem "rails", rails_constraint
gem "sprockets-rails", "< 3"
gem "webrick"

group :development, :test do
  gem "pry"
  gem "ember-cli-rails", github: "thoughtbot/ember-cli-rails"
end

group :test do
  gem "cuprite"
  gem "rspec-rails"
end
