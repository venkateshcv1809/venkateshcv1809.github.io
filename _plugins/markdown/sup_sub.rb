# frozen_string_literal: true

module Jekyll
  module Markdown
    module SupSub
      PLUGIN = true
      SUPERSCRIPT = /\^([^^\s]+)\^/
      SUBSCRIPT   = /(?<!~)~([^~\s]+)~(?!~)/

      def self.pre_render(content, _site)
        content = content.gsub(
          SUPERSCRIPT,
          '<sup>\\1</sup>'
        )

        content.gsub(
          SUBSCRIPT,
          '<sub>\\1</sub>'
        )
      end
    end
  end
end
