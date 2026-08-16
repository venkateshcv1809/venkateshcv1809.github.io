# frozen_string_literal: true

module Jekyll
  module Generators
    class CollectionPermalinks < Generator
      safe true
      priority :highest

      def generate(site)
        site.collections.each_value do |collection|
          next unless collection.metadata.fetch('output', false)

          collection.docs.each do |document|
            next if document.data.key?('permalink')

            document.data['permalink'] = permalink_for(document)
          end
        end
      end

      private

      def permalink_for(document)
        path = document.relative_path
                       .delete_prefix("_#{document.collection.label}/")
                       .delete_suffix(document.extname)

        path = path.delete_suffix('/index')
        path = '' if path == 'index'

        parts = [
          collection_prefix(document.collection),
          path
        ].reject(&:empty?)

        "/#{parts.join('/')}/"
      end

      def collection_prefix(collection)
        return '' if collection.label == 'pages'

        collection.label
      end
    end
  end
end
