require "ember_cli/assets/lookup"

module EmberCliRailsAssetsHelper
  def include_ember_script_tags(name, **options)
    EmberCli[name].build

    assets = EmberCli::Assets::Lookup.new(EmberCli[name])

    assets.javascript_assets.
      map { |src| %{<script src="#{src}"></script>}.html_safe }.
      reduce(&:+)
  end

  def include_ember_stylesheet_tags(name, **options)
    EmberCli[name].build

    assets = EmberCli::Assets::Lookup.new(EmberCli[name])

    assets.stylesheet_assets.
      map { |src| %{<link rel="stylesheet" href="#{src}">}.html_safe }.
      reduce(&:+)
  end
end
