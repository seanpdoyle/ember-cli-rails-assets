require "ember_cli/assets/paths"
require "fileutils"
require "pathname"
require "tmpdir"

describe EmberCli::Assets::Paths do
  describe "#package_json" do
    it "is a child of EmberCli::App#root_path" do
      app = build_app
      paths = EmberCli::Assets::Paths.new(app)

      expect(paths.package_json).to eq app.root_path.join("package.json")
    end
  end

  describe "#assets" do
    it "is a child of EmberCli::App#dist_path" do
      app = build_app
      paths = EmberCli::Assets::Paths.new(app)

      expect(paths.assets).to eq app.dist_path.join("assets")
    end
  end

  describe "#asset_map" do
    it "globs the EmberCli::App#dist_path directory for an `asset_map.json`" do
      app = build_app
      paths = EmberCli::Assets::Paths.new(app)
      asset_map = app.dist_path.join("assets", "assetMap-abc123.json")
      create_file(asset_map)

      expect(paths.asset_map).to exist
      expect(paths.asset_map).to eq(asset_map)
    end
  end

  def build_app
    root_path = Pathname.new(Dir.mktmpdir)

    double(
      root_path: root_path,
      dist_path: root_path.join("dist").tap(&:mkpath),
    )
  end

  def create_file(path)
    path.parent.mkpath

    FileUtils.touch(path)

    path
  end
end
