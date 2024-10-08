# frozen_string_literal: true

module Nokogiri
  module HTML4
    class ElementDescription
      ###
      # Is this element a block element?
      def block?
        !inline?
      end

      ###
      # Convert this description to a string
      def to_s
        "#{name}: #{description}"
      end

      ###
      # Inspection information
      def inspect
        "#<#{self.class.name}: #{name} #{description}>"
      end
    end
  end
end
