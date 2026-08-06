# frozen_string_literal: true

module Jekyll
  module Tokenizer
    TOKEN_PREFIX = '__TOKEN__'

    PATTERNS = [
      /```[\s\S]*?```/
    ].freeze

    def self.protect(content)
      tokens = {}
      index = 0

      PATTERNS.each do |pattern|
        content = content.gsub(pattern) do |match|
          token = "#{TOKEN_PREFIX}#{index}__"

          tokens[token] = match

          index += 1

          token
        end
      end

      [content, tokens]
    end

    def self.restore(content, tokens)
      tokens.each do |token, value|
        content.gsub!(token, value)
      end

      content
    end
  end
end
