# frozen_string_literal: true

module Jekyll
  module Markdown
    module Emoji
      PLUGIN = true
      EMOJI_ROOT = 'assets/emoji'
      EMOJI_PATTERN = /:emoji-([a-zA-Z0-9_-]+):/

      def self.pre_render(content, site)
        content.gsub(EMOJI_PATTERN) do
          name = Regexp.last_match(1)

          file = Dir.glob(
            File.join(
              site.source,
              EMOJI_ROOT,
              '**',
              "#{name}.webp"
            )
          ).first

          unless file
            warn "Emoji '#{name}' not found."
            next ":emoji-#{name}:"
          end

          relative = file
                     .delete_prefix(site.source)
                     .tr('\\', '/')

          <<~HTML.strip
            <img
                class="emoji emoji-#{name}"
                src="#{relative}"
                alt="#{name}"
                loading="lazy"
                decoding="async">
          HTML
        end
      end
    end
  end
end
