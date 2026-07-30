module Jekyll
    module Markdown
        module Highlight

            PATTERN = /(?<!\=)==([^\n=][^\n]*?)==(?!\=)/.freeze
            def self.process(content, _site)

                content.gsub(
                    PATTERN,
                    "<mark>\\1</mark>"
                )

            end

        end
    end
end