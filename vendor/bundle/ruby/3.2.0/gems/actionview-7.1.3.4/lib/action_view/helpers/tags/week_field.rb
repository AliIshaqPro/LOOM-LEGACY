# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags # :nodoc:
      class WeekField < DatetimeField # :nodoc:
        private
          def format_datetime(value)
            value&.strftime("%Y-W%V")
          end
      end
    end
  end
end
