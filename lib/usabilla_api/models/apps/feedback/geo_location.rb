module UsabillaApi
  module Models
    module Apps
      module Feedback
        class GeoLocation
          attr_accessor :city, :country, :lat, :lon, :region

          def initialize(args = {})
            @city      = args.with_indifferent_access['city']      || ''
            @country   = args.with_indifferent_access['country']   || ''
            @lat       = args.with_indifferent_access['lat']       || nil
            @lon       = args.with_indifferent_access['lon']       || nil
            @region    = args.with_indifferent_access['region']    || ''
          end

        end
      end
    end
  end
end