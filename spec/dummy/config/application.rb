require File.expand_path("../boot", __FILE__)

require "action_controller/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)
require "ember-cli-rails-assets"

module Dummy
  class Application < Rails::Application
    config.cache_classes = true
    config.eager_load = false
    config.serve_static_files   = true
    config.static_cache_control = "public, max-age=3600"

    config.consider_all_requests_local       = true
    config.action_controller.perform_caching = false
    config.action_dispatch.show_exceptions = false
    config.action_controller.allow_forgery_protection = false

    config.active_support.test_order = :random

    config.active_support.deprecation = :stderr

    config.secret_token = "SECRET_TOKEN_IS_MIN_30_CHARS_LONG"
    config.secret_key_base = "SECRET_KEY_BASE"
  end
end
