module UsabillaApi
  module Clients
    module Websites
      class InpageFeedback
        class << self

          def retrieve(params)
            request = UsabillaApi.api_client.new(params).request(UsabillaApi.configuration.uri_websites_inpage_feedback, true)
            response = UsabillaApi.response.new(request)
            response.items = response.items.map {|item| UsabillaApi::Models::Websites::InpageFeedback::Item.new(item)} unless response.items.nil?
            response
          end

        end
      end
    end
  end
end