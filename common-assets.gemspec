lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'common-assets/version'

Gem::Specification.new do |s|
  s.name     = 'common-assets'
  s.version  = Bootstrap::VERSION
  s.authors  = ['JoeWallCrypt0']
  s.email    = 'hericrypto@protonmail.com'
  s.summary  = 'common-assets has all the design assets, ready to drop right into your yugentrade rails applications.'
  s.homepage = 'https://github.com/P-Gambit/common-assets'
  s.license  = 'No License'

  s.add_runtime_dependency 'sass', '>= 3.3.4'
  s.add_runtime_dependency 'autoprefixer-rails', '>= 5.2.1'

  # Testing dependencies
  s.add_development_dependency 'minitest', '~> 5.8'
  # Integration testing
  s.add_development_dependency 'capybara', '>= 2.5.0'
  # Dummy Rails app dependencies
  s.add_development_dependency 'actionpack', '>= 4.1.5'
  s.add_development_dependency 'activesupport', '>= 4.1.5'
  s.add_development_dependency 'json', '>= 1.8.1'
  s.add_development_dependency 'sprockets-rails', '>= 2.1.3'
  s.add_development_dependency 'jquery-rails', '>= 3.1.0'
  s.add_development_dependency 'slim-rails'
  s.add_development_dependency 'uglifier'

  s.files      = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- test/*`.split("\n")
end
