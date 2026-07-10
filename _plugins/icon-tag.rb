# _plugins/icon_tag.rb

module Jekyll
    class IconTag < Liquid::Tag

        def initialize(tag_name, markup, tokens)
            super
                @name = markup.strip.downcase
            end

            def render(context)
            site = context.registers[:site]

            metadata = site.data.dig("site", "icons", @name)

            return "<!-- Unknown icon #{@name} -->" unless metadata

            svg_path = File.join(
                site.source,
                "assets",
                "icons",
                "#{@name}.svg"
            )

            return "<!-- Missing SVG #{@name} -->" unless File.exist?(svg_path)

            svg = File.read(svg_path)

            svg.sub!(
                "<svg",
                %(<svg class="inline-icon-svg" aria-hidden="true")
            )

            <<~HTML
                <span
                    class="inline-icon inline-icon--#{@name}"
                    title="#{metadata["label"]}"
                    aria-label="#{metadata["label"]}">
                    #{svg}
                </span>
            HTML
        end
    end
end

Liquid::Template.register_tag(
    "icon",
    Jekyll::IconTag
)