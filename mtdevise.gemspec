$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mtdevise/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|

	s.name        = "mtdevise"
	s.version     = Mtdevise::VERSION
	s.authors     = ["BradPotts"]
	s.email       = ["bradley.j.potts@gmail.com"]
	s.homepage    = "http://www.phcnetworks.net"
	s.summary     = "Multi-Tenant Rails Engine Using Devise."
  s.description = "mtdevise gem adds multi-tenant and account management features to rails Devise gem. Plataformatec Devise and required custom Twitter Bootstrap Devise views included."

	s.license     = "MIT"
	s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
	s.test_files = Dir["spec/**/*"]

	s.add_dependency 'pg'
	s.add_dependency 'rails'
	s.add_dependency 'jquery-rails'
	s.add_dependency 'devise'
	s.add_dependency 'houser'
	s.add_dependency 'simple_form'
	s.add_dependency 'simple_token_authentication'

	s.add_dependency 'omniauth-facebook'
	s.add_dependency 'omniauth-google-oauth2'
	s.add_dependency 'omniauth-twitter'
	s.add_dependency 'omniauth-instagram'
	s.add_dependency 'omniauth-github'

	s.add_dependency 'bootstrap-sass'
	s.add_dependency 'font-awesome-rails'
	s.add_dependency 'sass-rails'
	s.add_dependency 'rolify'
	s.add_dependency 'gravtastic'

	# s.add_dependency 'pry'
	# s.add_dependency 'pry-nav'

	s.add_development_dependency 'minitest'
	s.add_development_dependency 'simplecov'
	s.add_development_dependency 'coveralls'

	s.add_development_dependency 'mailcatcher'
	s.add_development_dependency 'sqlite3'
	s.add_development_dependency 'database_cleaner'
	s.add_development_dependency 'shoulda-matchers'
	s.add_development_dependency 'factory_girl'
	s.add_development_dependency 'rspec-rails'
	s.add_development_dependency 'capybara'

	s.add_development_dependency 'quiet_assets'
	s.add_development_dependency 'letter_opener'
	s.add_development_dependency 'pry'

end