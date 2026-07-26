module Jekyll
    module Markdown
        module SupSub

            SUPERSCRIPT = /\^([^^\s]+)\^/.freeze
            SUBSCRIPT   = /(?<!~)~([^~\s]+)~(?!~)/.freeze

            def self.process(content, _site)

                content = content.gsub(
                    SUPERSCRIPT,
                    "<sup>\\1</sup>"
                )

                content = content.gsub(
                    SUBSCRIPT,
                    "<sub>\\1</sub>"
                )

                content

            end

        end
    end
end