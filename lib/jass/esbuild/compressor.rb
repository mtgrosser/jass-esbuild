class Jass::Esbuild::Compressor
  VERSION = '1'

  class << self
    def instance
      @instance ||= new
    end

    def call(input)
      instance.call(input)
    end

    def cache_key
      instance.cache_key
    end
  end

  attr_reader :cache_key

  def initialize(options = {})
    @options = options
    # TODO: determine Sprockets dependency and use DigestUtils
    # @cache_key = "#{self.class.name}:#{Jass::Esbuild::VERSION}:#{VERSION}:#{DigestUtils.digest(options)}".freeze
    @cache_key = "#{self.class.name}:#{Jass::Esbuild::VERSION}:#{VERSION}".freeze
  end

  def call(input)
    result = Jass::Esbuild::Minifier.minify(input[:data])
    
    #map = SourceMapUtils.format_source_map(JSON.parse(map), input)
    #map = SourceMapUtils.combine_source_maps(input[:metadata][:map], map)

    { data: result['code'] } #, map: map }
  end
end
