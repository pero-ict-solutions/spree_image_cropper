# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_image_cropper'
  s.version     = '1.3.0'
  s.summary     = 'crop spree product images before resize'
  s.description = 'crop spree product images before resize'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Peter Berkenbosch'
  s.email     = 'peter@pero-ict.nl'
  s.homepage  = 'http://www.pero-ict.nl/spreecommerce'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.0.0.rc2'
  s.add_dependency 'sass-rails'
  s.add_dependency 'coffee-rails'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'database_cleaner'
end
