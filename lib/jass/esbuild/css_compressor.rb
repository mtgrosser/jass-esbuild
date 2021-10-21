class Jass::Esbuild::CssCompressor < Jass::Esbuild::Compressor
  def call(input)
    result = Jass::Esbuild::Minifier.minify_css(input[:data])
    
    #map = SourceMapUtils.format_source_map(JSON.parse(map), input)
    #map = SourceMapUtils.combine_source_maps(input[:metadata][:map], map)

    { data: result['code'] } #, map: map }
  end
end
