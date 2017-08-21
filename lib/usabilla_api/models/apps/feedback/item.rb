module UsabillaApi
  module Models
    module Apps
      module Feedback
        class Item
          attr_accessor :id, :date, :timestamp, :device_name, :data, :custom_data, :app_id, :app_name, :app_version, :os_name,
                        :os_version, :location, :geo_location, :free_memory, :total_memory, :free_storage, :total_storage,
                        :screenshot, :screensize, :connection, :ip_address, :language, :orientation, :battery_level, :rooted

          def initialize(args = {})
            @id               = args.with_indifferent_access['id']                                || ''
            @date             = args.with_indifferent_access['date']                              || ''
            @timestamp        = args.with_indifferent_access['timestamp']                         || ''
            @device_name      = args.with_indifferent_access['deviceName']                        || ''
            @data             = args.with_indifferent_access['data']                              || {}
            @custom_data      = args.with_indifferent_access['customData']                        || {}
            @app_id           = args.with_indifferent_access['appId']                             || ''
            @app_name         = args.with_indifferent_access['appName']                           || ''
            @app_version      = args.with_indifferent_access['appVersion']                        || ''
            @os_name          = args.with_indifferent_access['osName']                            || ''
            @os_version       = args.with_indifferent_access['osVersion']                         || ''
            @location         = args.with_indifferent_access['location']                          || ''
            @geo_location     = args.with_indifferent_access['geoLocation']                       || {}
            @free_memory      = args.with_indifferent_access['freeMemory']                        || nil
            @total_memory     = args.with_indifferent_access['totalMemory']                       || nil
            @free_storage     = args.with_indifferent_access['freeStorage']                       || nil
            @total_storage    = args.with_indifferent_access['totalStorage']                      || nil
            @screenshot       = args.with_indifferent_access['screenshot']                        || ''
            @screensize       = args.with_indifferent_access['screensize']                        || ''
            @connection       = args.with_indifferent_access['connection']                        || ''
            @ip_address       = args.with_indifferent_access['ipAddress']                         || ''
            @language         = args.with_indifferent_access['language']                          || ''
            @orientation      = args.with_indifferent_access['orientation']                       || ''
            @battery_level    = args.with_indifferent_access['batteryLevel']                      || nil
            @rooted           = args.with_indifferent_access['rooted']                            || false
          end
        end
      end
    end
  end
end
