require 'spec_helper'

module UsabillaApi
  describe UsabillaApi::Clients::Websites::InpageFeedback do

    let(:params) { { 'id' => '12345' } }
    let(:response) { UsabillaApi::Clients::Websites::InpageFeedback.retrieve(params) }
    let(:feedback_json){ { items: [{ id: '1234567890', userAgent: 'Agent', comment: 'Feedback',
                                     location: 'Atlanta', date: '01012015', custom: {}, data: {},
                                     mood: 3, nps: 5, rating: 3, widgetId: '1234567890', geo: {} }],
                           count: 1, hasMore: false, lastTimestamp: 1234567890 }.to_json }

    describe '#retrieve' do
      before :each do
        stub_request(:get, uri_stem(UsabillaApi.configuration.uri_websites_inpage_feedback, params['id'])).to_return(:body => feedback_json)
      end

      context 'when we call websites inpage feedback retrieve' do
        it { expect(response.items.first).to be_an_instance_of UsabillaApi::Models::Websites::InpageFeedback::Item }
      end

      context 'when no id is provided' do
        let(:params) { { 'id' => '' } }
        it { expect{response}.to raise_error('Invalid ID Parameter') }
      end

    end

  end
end
