# encoding: utf-8

module Nanoc::PluginTemplate

  class Filter < Nanoc::Filter

    identifier :plugin_template

    def run(content, params={})
      if params.fetch(:invert, false)
        content.downcase
      else
        content.upcase
      end
    end

  end

end
