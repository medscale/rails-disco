version = File.read(File.expand_path('../../RAILS-DISCO_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.name          = 'active_domain'
  s.version       = version

  s.authors       = 'HicknHack Software'
  s.email         = 'rails-disco@hicknhack-software.com'
  s.homepage      = 'https://github.com/hicknhack-software/rails-disco'

  s.summary       = 'Domain specifics for the Rails Disco'
  s.description   = <<-EOF
    A framework that allows to write a domain server, that processes commands and creates events.

    You should have exactly one domain server for your Rails Disco applications.
    The domain runs in a domain specific database environment. This helps to make sure no other process interferes with the domain.

    Have a look at the rails-disco documentation on Github for more details.
EOF
  
  s.license       = 'MIT'

  s.files         = Dir['{app,db,lib}/**/*', 'README.md', 'MIT-LICENSE']
  s.require_path = 'lib'
  s.test_files    = Dir['spec/**/*']

  s.add_dependency 'active_event', version
  s.add_dependency 'activerecord', '>= 3.2', '< 5.0'
  s.add_dependency 'activemodel', '>= 3.2', '< 5.0'
  s.add_dependency 'bunny'

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'coveralls'
end
