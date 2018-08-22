$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mti/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mti"
  s.version     = Mti::VERSION
  s.authors     = ["Vishal Taj PM"]
  s.email       = ["vishaltajpm@gmail.com"]
  s.homepage    = "https://github.com/VishalTaj/mti"
  s.summary     = "Multiple Table Inheritance"
  s.description = "Implemention Multiple Table Inheritance in Rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
end
