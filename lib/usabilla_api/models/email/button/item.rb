module UsabillaApi
  module Models
    module Email
      module Button
        class Item
          attr_accessor :id, :date, :groups, :intro_text, :locale, :name

          def initialize(args = {})
            @id             = args.with_indifferent_access['id']                  || ''
            @date           = args.with_indifferent_access['date']                || ''
            @groups         = add_groups(args.with_indifferent_access['groups'])  || {}
            @intro_text     = args.with_indifferent_access['introText']           || ''
            @locale         = args.with_indifferent_access['locale']              || ''
            @name           = args.with_indifferent_access['name']                || ''
          end

          private

          def add_groups(hash)
            hash.map{ |group| UsabillaApi::Models::Email::Button::Groups.new(group) } unless hash.nil?
          end
        end
      end
    end
  end
end