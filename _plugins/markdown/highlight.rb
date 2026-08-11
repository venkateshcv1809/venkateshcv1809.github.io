# frozen_string_literal: true

module Jekyll
  module Markdown
    module Highlight
      PLUGIN = true
      PATTERN = /(?<!=)==([^\n=][^\n]*?)==(?!=)/

      def self.pre_render(content, _site)
        content.gsub(
          PATTERN,
          '<mark>\\1</mark>'
        )
      end
    end
  end
end
