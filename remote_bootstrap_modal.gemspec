$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "remote_bootstrap_modal/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "remote_bootstrap_modal"
  s.version     = RemoteBootstrapModal::VERSION
  s.authors     = ["Glauco Custódio"]
  s.email       = ["glauco.custodio@gmail.com"]
  s.homepage    = "https://github.com/glaucocustodio/remote_bootstrap_modal"
  s.summary     = "A tiny Rails engine that helps you loading remote links into a bootstrap modal"
  s.description = "A tiny Rails engine that helps you loading remote links into a bootstrap modal"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # s.add_dependency "rails", "~> 5.2.1"
  s.add_dependency "responders", "~> 2.4"

  # s.add_development_dependency "sqlite3"
end
