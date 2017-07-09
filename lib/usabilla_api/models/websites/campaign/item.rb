module UsabillaApi
  module Models
    module Websites
      module Campaign
        class Item
          attr_accessor :id, :date, :button_id, :analytics_id, :status, :name, :type

          def initialize(args = {})
            @id             = args.with_indifferent_access['id']          || ''
            @date           = args.with_indifferent_access['date']        || ''
            @button_id      = args.with_indifferent_access['buttonId']    || ''
            @analytics_id   = args.with_indifferent_access['analyticsId'] || ''
            @status         = args.with_indifferent_access['status']      || ''
            @name           = args.with_indifferent_access['name']        || ''
            @type           = args.with_indifferent_access['type']        || ''
          end

        end
      end
    end
  end
end