# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','glit','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'glit'
  s.version = Glit::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/glit
lib/glit/version.rb
lib/glit.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','glit.rdoc']
  s.rdoc_options << '--title' << 'glit' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'glit'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.7.0')
end
