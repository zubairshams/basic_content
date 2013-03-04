$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "basic_content/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "basic_content"
  s.version     = BasicContent::VERSION
  s.authors     = ["Zubair Shams"]
  s.email       = ["zubair.shams@coeus-solutions.de"]
  s.homepage    = "https://github.com/zubairshams/basic_content"
  s.summary     = "Basic Content engine for appattrip application"
  s.description = "It will provide basic content types text, image with text and web url"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency "rails", "~> 3.1.3"
  s.add_development_dependency "mysql2"
end
