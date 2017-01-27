Gem::Specification.new do |s|
  s.name               = "macmem"
  s.version            = "0.0.2"
  
  s.authors = ["Silvio Henrique Ferreira"]
  s.date = %q{2011-12-28}
  s.description = %q{Get the memory usage of the current Ruby process in Mac OS X}
  s.email = %q{shferreira@me.com}
  s.homepage = %q{http://github.com/shf/macmem}
  s.extensions = ['ext/extconf.rb']
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Get the memory usage of the current Ruby process in Mac OS X}

  s.files = Dir.glob('lib/*.rb') +
            Dir.glob('ext/*{.c,.h}')
end
