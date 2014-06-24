$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "prim_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "prim_engine"
  s.version     = PrimEngine::VERSION
  s.authors     = "Eric Schlange"
  s.email       = "eric.schlange@northwestern.edu"
  s.homepage    = "https://github.com/eschlange/prim-engine"
  s.summary     = "Contains common models and functionality for PRIM features."
  s.description = "See README file for a complete description."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.1"

  s.add_development_dependency "pg"
end
