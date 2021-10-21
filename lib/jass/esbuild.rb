require 'nodo'

require_relative 'esbuild/version'
require_relative 'esbuild/minifier'
require_relative 'esbuild/compressor'
require_relative 'esbuild/js_compressor'
require_relative 'esbuild/css_compressor'

begin
  require 'sprockets'
rescue LoadError
  # Sprockets not available
end

if defined?(Sprockets)
  Sprockets.register_compressor 'application/javascript', :esbuild, Jass::Esbuild::JsCompressor
  Sprockets.register_compressor 'text/css', :esbuild, Jass::Esbuild::CssCompressor
end
