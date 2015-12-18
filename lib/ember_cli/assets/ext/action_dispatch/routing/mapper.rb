module ActionDispatch
  module Routing
    class Mapper
      def mount_ember_assets(app_name, to: "/")
        dist_directory = EmberCli[app_name].paths.dist

        mount Rack::File.new(dist_directory.to_s) => to
      end
    end
  end
end
