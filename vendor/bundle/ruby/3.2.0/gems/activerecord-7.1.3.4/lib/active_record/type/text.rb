# frozen_string_literal: true

module ActiveRecord
  module Type
    class Text < ActiveModel::Type::String # :nodoc:
      def type
        :text
      end
    end
  end
end
