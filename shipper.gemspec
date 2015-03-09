# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__), 'lib', 'shipper', 'version.rb'])
Gem::Specification.new do |s|
  s.name = 'shipper'
  s.version = Docking::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split('
')
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.bindir = 'bin'
  s.executables << 'shipper'
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
  s.add_development_dependency('rspec-its')
  s.add_development_dependency('rubocop')
  s.add_development_dependency('pry')

  s.add_runtime_dependency('gli', '2.12.2')
  s.add_runtime_dependency('docker-api', '1.17.0')
end