module Jekyll
    class SubSupConverter < Converter
        safe true
        priority :high

        def matches(ext)
            ext =~ /^\.(md|markdown)$/i
        end

        def output_ext(ext)
            ".html"
        end

        def convert(content)
            # Split text into code blocks/inline code and normal text
            # This prevents modifying text inside `code` or ```blocks```
            tokens = content.split(/(`[^`\n]+`|```[ \s\S]*?```)/)

            tokens.map! do |token|
                # If the token is a code block or inline code, leave it completely alone
                if token.start_with?('`')
                    token
                else
                    # Process only the safe, normal text
                    # 1. Convert ^text^ to <sup>text</sup>
                    token.gsub!(/\^([^\^\s\s]+)\^/, '<sup>\1</sup>')
                    
                    # 2. Convert ~text~ to <sub>text</sub>
                    token.gsub!(/(?<!~)~([^~\s]+)~(?!~)/, '<sub>\1</sub>')
                    
                    token
                end
            end

            tokens.join
        end
    end
end
