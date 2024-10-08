module Hashie
  module Extensions
    module DeepLocate
      # The module level implementation of #deep_locate, incase you do not want
      # to include/extend the base datastructure. For further examples please
      # see #deep_locate.
      #
      # @example
      #   books = [
      #     {
      #       title: "Ruby for beginners",
      #       pages: 120
      #     },
      #     ...
      #   ]
      #
      #   DeepLocate.deep_locate -> (key, value, object) { key == :title }, books
      #   # => [{:title=>"Ruby for beginners", :pages=>120}, ...]
      def self.deep_locate(comparator, object)
        unless comparator.respond_to?(:call)
          comparator = _construct_key_comparator(comparator, object)
        end

        _deep_locate(comparator, object)
      end

      # Performs a depth-first search on deeply nested data structures for a
      # given comparator callable and returns each Enumerable, for which the
      # callable returns true for at least one the its elements.
      #
      # @example
      #   books = [
      #     {
      #       title: "Ruby for beginners",
      #       pages: 120
      #     },
      #     {
      #       title: "CSS for intermediates",
      #       pages: 80
      #     },
      #     {
      #       title: "Collection of ruby books",
      #       books: [
      #         {
      #           title: "Ruby for the rest of us",
      #           pages: 576
      #         }
      #       ]
      #     }
      #   ]
      #
      #   books.extend(Hashie::Extensions::DeepLocate)
      #
      #   # for ruby 1.9 leave *no* space between the lambda rocket and the braces
      #   # http://ruby-journal.com/becareful-with-space-in-lambda-hash-rocket-syntax-between-ruby-1-dot-9-and-2-dot-0/
      #
      #   books.deep_locate -> (key, value, object) { key == :title && value.include?("Ruby") }
      #   # => [{:title=>"Ruby for beginners", :pages=>120},
      #   #     {:title=>"Ruby for the rest of us", :pages=>576}]
      #
      #   books.deep_locate -> (key, value, object) { key == :pages && value <= 120 }
      #   # => [{:title=>"Ruby for beginners", :pages=>120},
      #   #     {:title=>"CSS for intermediates", :pages=>80}]
      def deep_locate(comparator)
        Hashie::Extensions::DeepLocate.deep_locate(comparator, self)
      end

      def self._construct_key_comparator(search_key, object)
        if object.respond_to?(:indifferent_access?) && object.indifferent_access? ||
           activesupport_indifferent?(object)
          search_key = search_key.to_s
        end

        lambda do |non_callable_object|
          ->(key, _, _) { key == non_callable_object }
        end.call(search_key)
      end
      private_class_method :_construct_key_comparator

      def self._deep_locate(comparator, object, result = [])
        if object.is_a?(::Enumerable)
          if object.any? { |value| _match_comparator?(value, comparator, object) }
            result.push object
          end

          (object.respond_to?(:values) ? object.values : object.entries).each do |value|
            _deep_locate(comparator, value, result)
          end
        end

        result
      end
      private_class_method :_deep_locate

      def self._match_comparator?(value, comparator, object)
        if object.is_a?(::Hash)
          key, value = value
        else
          key = nil
        end

        comparator.call(key, value, object)
      end
      private_class_method :_match_comparator?

      def self.activesupport_indifferent?(object)
        defined?(::ActiveSupport::HashWithIndifferentAccess) &&
          object.is_a?(::ActiveSupport::HashWithIndifferentAccess)
      end
      private_class_method :activesupport_indifferent?
    end
  end
end
