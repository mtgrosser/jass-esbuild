class Jass::Esbuild::Minifier < Nodo::Core
  require 'esbuild'

  function :minify_js, <<~'JS'
    async (code, options) => {
      return await esbuild.transform(code, { minify: true });
    }
  JS
  class_function :minify_js

  function :minify_css, <<~'JS'
    async (code, options) => {
      return await esbuild.transform(code, { loader: 'css', minify: true });
    }
  JS
  class_function :minify_css
end
