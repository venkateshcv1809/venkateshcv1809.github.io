require_relative "tokenizer"

module Jekyll

    module ProcessorConfig

        PLUGIN_CATEGORIES = [
            "markdown",
        ].freeze

    end

end

Jekyll::ProcessorConfig::PLUGIN_CATEGORIES.each do |category|

    Dir.glob(
        File.join(__dir__, category, "*.rb")
    )
    .sort
    .each do |file|

        require_relative File.join(
            category,
            File.basename(file, ".rb")
        )

    end

end

module Jekyll

    module Processor

        PROCESSORS = []

        ProcessorConfig::PLUGIN_CATEGORIES.each do |category|

            namespace = Jekyll.const_get(
                category.split("_")
                        .map(&:capitalize)
                        .join
            )

            namespace.constants.sort.each do |constant|

                mod = namespace.const_get(constant)

                PROCESSORS << mod if mod.respond_to?(:process)

            end

        end

        PROCESSORS.freeze

        def self.process(content, site)

            content, tokens = Tokenizer.protect(content)

            PROCESSORS.each do |processor|

                content = processor.process(
                    content,
                    site
                )

            end

            Tokenizer.restore(
                content,
                tokens
            )

        end

    end

end

Jekyll::Hooks.register(
    [:pages, :documents],
    :pre_render
) do |item|

    item.content = Jekyll::Processor.process(
        item.content,
        item.site
    )

end