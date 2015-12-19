module ActionDispatch
  module Routing
    class Mapper
      def mount_ember_assets(app_name, to: "/")
        app = EmberCli[app_name]
        rack_app = Rack::File.new(app.dist_path.to_s)

        mount rack_app => to
      end
    end
  end
end
