module UsabillaApi
  module Models
    module Email
      module Feedback
        class Item
          attr_accessor :id, :user_agent, :comment, :location, :date, :custom, :email, :labels, :nps,
                        :public_url, :rating, :button_id, :tags, :url

          def initialize(args = {})
            @id             = args.with_indifferent_access['id']          || ''
            @user_agent     = args.with_indifferent_access['userAgent']   || ''
            @comment        = args.with_indifferent_access['comment']     || ''
            @location       = args.with_indifferent_access['location']    || ''
            @date           = args.with_indifferent_access['date']        || nil
            @custom         = args.with_indifferent_access['custom']      || []
            @email          = args.with_indifferent_access['email']       || ''
            @labels         = args.with_indifferent_access['labels']      || []
            @nps            = args.with_indifferent_access['nps']         || nil
            @public_url     = args.with_indifferent_access['publicUrl']   || ''
            @rating         = args.with_indifferent_access['rating']      || nil
            @button_id      = args.with_indifferent_access['buttonId']    || ''
            @tags           = args.with_indifferent_access['tags']        || []
            @url            = args.with_indifferent_access['url']         || ''
          end
        end
      end
    end
  end
end