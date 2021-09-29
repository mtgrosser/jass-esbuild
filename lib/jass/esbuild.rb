require_relative 'esbuild/version'
require_relative 'esbuild/minifier'
require_relative 'esbuild/compressor'

begin
  require 'sprockets'
  Sprockets.register_compressor 'application/javascript', :esbuild, Jass::Esbuild::Compressor
rescue LoadError
  # Sprockets not available
end
