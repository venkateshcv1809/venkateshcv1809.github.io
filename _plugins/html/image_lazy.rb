# frozen_string_literal: true

module Jekyll
  module Html
    module ImageLazy
      PLUGIN = true
      # Match all img tags
      IMG_PATTERN = /<img[^>]*>/i

      def self.post_render(content, _site)
        image_count = 0

        content.gsub(IMG_PATTERN) do
          img_tag = Regexp.last_match(0)
          image_count += 1

          # Check if attributes already exist
          has_loading = img_tag =~ /loading=/i
          has_decoding = img_tag =~ /decoding=/i

          # Add missing attributes
          new_tag = img_tag.dup

          unless has_loading
            # First image gets eager loading
            loading_value = image_count == 1 ? 'eager' : 'lazy'
            new_tag = new_tag.sub(/<img/i, "<img loading=\"#{loading_value}\"")
          end

          unless has_decoding
            new_tag = new_tag.sub(/<img/i, '<img decoding="async"')
          end

          new_tag
        end
      end
    end
  end
end
