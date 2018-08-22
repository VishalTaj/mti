$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mti/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mti"
  s.version     = Mti::VERSION
  s.authors     = ["Vishal Taj PM"]
  s.email       = ["vishaltajpm@gmail.com"]
  s.homepage    = ""
  s.summary     = "TODO: Summary of Mti."
  s.description = "TODO: Description of Mti."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
end
