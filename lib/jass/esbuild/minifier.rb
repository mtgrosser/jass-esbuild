class Jass::Esbuild::Minifier < Jass::Core
  require 'esbuild'
  
  class << self
    def minify(*args, **opts)
      instance.minify(*args, **opts)
    end
  end
  
  function :minify, <<~'JS'
    async (code, options) => {
      return await esbuild.transform(code, { minify: true });
    }
  JS
end
