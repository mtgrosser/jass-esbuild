lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jass/esbuild/version'

Gem::Specification.new do |s|
  s.name          = 'jass-esbuild'
  s.version       = Jass::Esbuild::VERSION
  s.date          = '2021-10-02'
  s.authors       = ['Matthias Grosser']
  s.email         = ['mtgrosser@gmx.net']
  s.license       = 'MIT'

  s.summary       = 'esbuild for Sprockets and the Rails asset pipeline'
  s.homepage      = 'https://github.com/mtgrosser/jass-esbuild'

  s.files = ['LICENSE', 'README.md'] + Dir['lib/**/*.rb']
  
  s.required_ruby_version = '>= 2.3.0'
  
  s.add_dependency 'nodo', '>= 1.5.0'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'byebug'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'sprockets'
end
