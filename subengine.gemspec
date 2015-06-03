$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "subengine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
	s.name        = "subengine"
	s.version     = Subengine::VERSION
	s.authors     = ["Brad Potts"]
	s.email       = ["bradley.j.potts@gmail.com"]
	s.homepage    = "http://www.coastdigitalgroup.com"
	s.summary     = "This engine takes the task out of rebuilding a user and sub-domain authentication system for separate data accounts."
	s.description = "This engine takes the task out of rebuilding a user and sub-domain authentication system with separate data account scoping."
	s.license     = "MIT"

	s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  # Main Dependencies
	s.add_dependency "rails", "~> 4.2.1"
	s.add_dependency "sqlite3"

  # Authetication
  s.add_dependency "devise"
  
	# Testing Dependencies
	s.add_development_dependency "rspec-rails", "3.0.1"
	s.add_development_dependency "capybara", "2.3.0"

end