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
    @cache_key = "#{self.class.name}:#{Jass::Esbuild::VERSION}:#{Sprockets::DigestUtils.digest(options)}".freeze
  end

end
