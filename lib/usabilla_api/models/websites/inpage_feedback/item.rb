module UsabillaApi
  module Models
    module Websites
      module InpageFeedback
        class Item
          attr_accessor :id, :user_agent, :comment, :location, :date, :custom,
                        :widget_id, :nps, :geo, :rating,
                        :mood, :raw_data, :data

          def initialize(args = {})
            @raw_data       = args.with_indifferent_access
            @id             = raw_data['id']          || ''
            @date           = raw_data['date']        || ''
            @widget_id      = raw_data['widgetId']    || ''
            @user_agent     = raw_data['userAgent']   || ''
            @location       = raw_data['location']    || ''
            @geo            = raw_data['geo']         || {}
            @comment        = raw_data['comment']     || ''
            @data           = raw_data['data']        || {}
            @custom         = raw_data['customData']  || {}
            @mood           = raw_data['mood']        || nil
            @rating         = raw_data['rating']      || nil
            @nps            = raw_data['nps']         || nil
          end

        end
      end
    end
  end
end
