module EmberCli
  module Assets
    class Engine < ::Rails::Engine
      initializer "ember-cli-rails-assets" do
        require "ember_cli/assets/ext/action_dispatch/routing/mapper"
      end

      config.to_prepare do
        ActionController::Base.helper EmberCliRailsAssetsHelper
      end
    end
  end
end
