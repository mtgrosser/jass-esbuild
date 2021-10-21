require_relative 'test_helper'

class JassEsbuildTest < Minitest::Test

  def setup
    Nodo.logger.clear!
  end

  def test_minify_js
    result = Jass::Esbuild::Minifier.minify_js('fn = obj => { return obj.x }')
    assert_equal "fn=n=>n.x;\n", result['code']
  end

  def test_minify_css
    result = Jass::Esbuild::Minifier.minify_css('div { color: yellow }')
    assert_equal "div{color:#ff0}\n", result['code']
  end

  def test_compress_js
    result = Jass::Esbuild::JsCompressor.call(data: 'fn = obj => { return obj.x }')
    assert_equal "fn=n=>n.x;\n", result[:data]
  end

  def test_compress_css
    result = Jass::Esbuild::CssCompressor.call(data: 'div { color: yellow }')
    assert_equal "div{color:#ff0}\n", result[:data]
  end

end
