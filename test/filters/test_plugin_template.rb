# encoding: utf-8

require 'helper'

class Nanoc::PluginTemplate::FilterTest < Minitest::Test

  def test_filter
    filter = ::Nanoc::PluginTemplate::Filter.new({})
    assert_equal("HELLO WORLD!", filter.run("Hello World!"))
  end

  def test_filter_invert
    filter = ::Nanoc::PluginTemplate::Filter.new({})
    assert_equal("hello world!", filter.run("Hello World!", invert: true))
  end

end
