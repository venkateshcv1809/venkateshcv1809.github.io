# frozen_string_literal: true

module Jekyll
  module Html
    module TableWrapper
      PLUGIN = true

      WRAPPER_REGEX = %r{
          <div\s+class="table-wrapper">\s*
          <table.*?</table>\s*
          </div>
      }mx

      TABLE_REGEX = %r{
          <table.*?</table>
      }mx

      def self.post_render(content, _site)
        return content if content.match?(WRAPPER_REGEX)

        content.gsub(TABLE_REGEX) do |table|
          %(<div class="table-wrapper">#{table}</div>)
        end
      end
    end
  end
end
