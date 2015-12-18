$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ember_cli_rails_assets/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ember_cli_rails_assets"
  s.version     = EmberCliRailsAssets::VERSION
  s.authors     = ["Sean Doyle"]
  s.email       = ["sean.p.doyle24@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of EmberCliRailsAssets."
  s.description = "TODO: Description of EmberCliRailsAssets."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
