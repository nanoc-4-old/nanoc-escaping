# encoding: utf-8

require 'nanoc/capturing'

module Nanoc::Escaping

  module Helper

    include Nanoc::Capturing::Helper

    def html_escape(string=nil, &block)
      if block_given?
        # Capture and escape block
        data = capture(&block)
        escaped_data = html_escape(data)

        # Append filtered data to buffer
        buffer = eval('_erbout', block.binding)
        buffer << escaped_data
      elsif string
        string.gsub('&', '&amp;').
               gsub('<', '&lt;').
               gsub('>', '&gt;').
               gsub('"', '&quot;')
      else
        raise RuntimeError, "The #html_escape or #h function needs either a " \
        "string or a block to HTML-escape, but neither a string nor a block was given"
      end
    end

    alias h html_escape

  end

end
