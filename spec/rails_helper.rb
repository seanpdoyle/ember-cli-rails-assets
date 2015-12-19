ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../spec/dummy/config/environment.rb", __FILE__)

if Rails.env.production?
  abort("The Rails environment is running in production mode!")
end

require "spec_helper"
require "rspec/rails"
require "capybara/poltergeist"

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
end

Capybara.javascript_driver = :poltergeist
