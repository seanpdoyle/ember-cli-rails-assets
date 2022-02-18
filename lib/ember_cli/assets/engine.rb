module EmberCli
  module Assets
    class Engine < ::Rails::Engine
      config.to_prepare do
        ActionController::Base.helper EmberCliRailsAssetsHelper
      end
    end
  end
end
