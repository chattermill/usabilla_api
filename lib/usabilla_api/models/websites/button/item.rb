module UsabillaApi
  module Models
    module Websites
      module Button
        class Item
          attr_accessor :id, :name

          def initialize(args = {})
            @id     = args.with_indifferent_access['id']    || ''
            @name   = args.with_indifferent_access['name']  || ''
          end
        end
      end
    end
  end
end