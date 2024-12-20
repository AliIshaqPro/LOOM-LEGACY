# frozen_string_literal: true

module ActiveRecord
  class Relation
    module RecordFetchWarning
      # When this module is prepended to ActiveRecord::Relation and
      # +config.active_record.warn_on_records_fetched_greater_than+ is
      # set to an integer, if the number of records a query returns is
      # greater than the value of +warn_on_records_fetched_greater_than+,
      # a warning is logged. This allows for the detection of queries that
      # return a large number of records, which could cause memory bloat.
      #
      # In most cases, fetching large number of records can be performed
      # efficiently using the ActiveRecord::Batches methods.
      # See ActiveRecord::Batches for more information.
      def exec_queries
        QueryRegistry.reset

        super.tap do |records|
          if logger && ActiveRecord.warn_on_records_fetched_greater_than
            if records.length > ActiveRecord.warn_on_records_fetched_greater_than
              logger.warn "Query fetched #{records.size} #{@klass} records: #{QueryRegistry.queries.join(";")}"
            end
          end
        end
      end

      # :stopdoc:
      ActiveSupport::Notifications.subscribe("sql.active_record") do |*, payload|
        QueryRegistry.queries << payload[:sql]
      end
      # :startdoc:

      module QueryRegistry # :nodoc:
        extend self

        def queries
          ActiveSupport::IsolatedExecutionState[:active_record_query_registry] ||= []
        end

        def reset
          queries.clear
        end
      end
    end
  end
end

ActiveRecord::Relation.prepend ActiveRecord::Relation::RecordFetchWarning
