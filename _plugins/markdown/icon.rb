# frozen_string_literal: true

module Jekyll
  module Markdown
    module Icon
      PLUGIN = true
      ICON_ROOT = 'assets/icons'
      ICON_PATTERN = /:icon-([a-zA-Z0-9_-]+):/

      def self.pre_render(content, site)
        content.gsub(ICON_PATTERN) do
          name = Regexp.last_match(1)

          file = Dir.glob(
            File.join(
              site.source,
              ICON_ROOT,
              '**',
              "#{name}.svg"
            )
          ).first

          unless file
            warn "Icon '#{name}' not found."
            next ":icon-#{name}:"
          end

          svg = File.read(file)

          svg.sub!(
            '<svg',
            %(<svg class="icon icon-#{name}")
          )

          svg
        end
      end
    end
  end
end
