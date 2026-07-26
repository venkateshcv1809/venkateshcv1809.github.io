module Jekyll
    module Markdown
        module Emoji

            EMOJI_ROOT = "assets/emoji".freeze

            EMOJI_PATTERN = /:emoji-([a-zA-Z0-9_-]+):/.freeze

            def self.process(content, site)

                content.gsub(EMOJI_PATTERN) do

                    name = Regexp.last_match(1)

                    file = Dir.glob(
                        File.join(
                            site.source,
                            EMOJI_ROOT,
                            "**",
                            "#{name}.webp"
                        )
                    ).first

                    unless file
                        warn "Emoji '#{name}' not found."
                        next ":emoji-#{name}:"
                    end

                    relative = file
                        .delete_prefix(site.source)
                        .tr("\\", "/")

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