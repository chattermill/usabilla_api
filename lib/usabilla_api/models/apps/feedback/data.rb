module UsabillaApi
  module Models
    module Apps
      module Feedback
        class Data
          attr_accessor :name, :nps, :rating, :speed, :subject

          def initialize(args = {})
            @name       = args.with_indifferent_access['name']      || ''
            @nps        = args.with_indifferent_access['nps']       || nil
            @rating     = args.with_indifferent_access['rating']    || nil
            @speed      = args.with_indifferent_access['speed']     || nil
            @subject    = args.with_indifferent_access['subject']   || ''
          end

        end
      end
    end
  end
end