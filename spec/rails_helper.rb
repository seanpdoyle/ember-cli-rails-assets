ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../spec/dummy/config/environment.rb", __FILE__)

if Rails.env.production?
  abort("The Rails environment is running in production mode!")
end

require "spec_helper"
require "rspec/rails"
require "capybara/cuprite"

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
end

Capybara.server = :webrick
Capybara.javascript_driver = :cuprite
Capybara.register_driver :cuprite do |app|
  Capybara::Cuprite::Driver.new(
    app,
    window_size: [1200, 800],
    process_timeout: 30,
    timeout: 30,
    browser_options: { 'no-sandbox': nil }
  )
end
