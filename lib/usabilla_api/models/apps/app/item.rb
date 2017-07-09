module UsabillaApi
  module Models
    module Apps
      module App
        class Item
          attr_accessor :id, :name, :date, :status

          def initialize(args = {})
            @id             = args.with_indifferent_access['id']      || ''
            @name           = args.with_indifferent_access['name']    || ''
            @date           = args.with_indifferent_access['date']    || ''
            @status         = args.with_indifferent_access['status']  || ''
          end

        end
      end
    end
  end
end