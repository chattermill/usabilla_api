require 'spec_helper'

module UsabillaApi
  module Models
    module Websites
      module InpageFeedback
        describe Item do
          let(:feedback) { Models::Websites::InpageFeedback::Item.new(feedback_hash) }

          context 'a feedback_hash is valid' do
            let(:feedback_hash) do
              {
                  'id' => '1234567890',
                  'userAgent' => 'Agent',
                  'comment' => 'Feedback',
                  'location' => 'Atlanta',
                  'geo' => {},
                  'date' => '01012015',
                  'customData' => {},
                  'nps' => 0,
                  'mood' => 3,
                  'rating' => 2,
                  'widgetId' => '1234567890',
                  'data' => {},
                  'url' => 'http://foo.com'
              }
            end

            it { expect(feedback.id).to eq('1234567890') }
            it { expect(feedback.user_agent).to eq ('Agent') }
            it { expect(feedback.comment).to eq ('Feedback') }
            it { expect(feedback.location).to eq ('Atlanta') }
            it { expect(feedback.date).to eq ('01012015') }
            it { expect(feedback.custom).to eq ({}) }
            it { expect(feedback.geo).to eq ({}) }
            it { expect(feedback.data).to eq ({}) }
            it { expect(feedback.nps).to eq (0) }
            it { expect(feedback.mood).to eq (3) }
            it { expect(feedback.rating).to eq (2) }
            it { expect(feedback.widget_id).to eq ('1234567890') }
            it { expect(feedback.public_url).to eq ('http://foo.com') }
          end
        end
      end
    end
  end
end