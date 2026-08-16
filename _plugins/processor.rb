# frozen_string_literal: true

require_relative 'tokenizer'

module Jekyll
  module ProcessorConfig
    PLUGIN_CATEGORIES = %w[
      markdown
      html
    ].freeze
  end
end

Jekyll::ProcessorConfig::PLUGIN_CATEGORIES.each do |category|
  Dir.glob(
    File.join(__dir__, category, '*.rb')
  ).each do |file|
    require_relative File.join(
      category,
      File.basename(file, '.rb')
    )
  end
end

module Jekyll
  module Processor
    MARKDOWN_PATTERNS = [
      /```[\s\S]*?```/
    ].freeze

    HTML_PATTERNS = [
      %r{<head\b[^>]*>.*?</head>}mi,
      %r{<script\b[^>]*>.*?</script>}mi,
      %r{<style\b[^>]*>.*?</style>}mi,
      %r{<pre\b[^>]*>.*?</pre>}mi,
      %r{<code\b[^>]*>.*?</code>}mi
    ].freeze
    PROCESSORS = []

    ProcessorConfig::PLUGIN_CATEGORIES.each do |category|
      namespace = Jekyll.const_get(
        category.split('_')
                  .map(&:capitalize)
                  .join
      )

      namespace.constants.sort.each do |constant|
        mod = namespace.const_get(constant)

        next unless mod.is_a?(Module)
        next unless mod.const_defined?(:PLUGIN, false)
        next unless mod::PLUGIN

        PROCESSORS << mod
      end
    end

    PROCESSORS.freeze

    def self.run(event, content, site)
      patterns =
        case event
        when :pre_render
          MARKDOWN_PATTERNS
        when :post_render
          HTML_PATTERNS
        else
          []
        end

      content, tokens = Tokenizer.protect(
        content,
        patterns
      )
      PROCESSORS.each do |processor|
        next unless processor.respond_to?(event)

        content = processor.public_send(
          event,
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
  %i[pages documents],
  :pre_render
) do |item|
  item.content = Jekyll::Processor.run(
    :pre_render,
    item.content,
    item.site
  )
end

Jekyll::Hooks.register(
  %i[pages documents],
  :post_render
) do |item|
  item.output = Jekyll::Processor.run(
    :post_render,
    item.output,
    item.site
  )
end
