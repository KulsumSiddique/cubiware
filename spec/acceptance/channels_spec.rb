require 'rails_helper'
require 'rspec_api_documentation/dsl'

RSpec.resource 'Channels' do
  let!(:channel) { FactoryGirl.create :channel }

  get '/channels.json' do
    example "Listing channels" do
      do_request
      expect(status).to eq 200
    end
  end

  get '/channels/:id.json' do
    parameter :id, "Channel's id"
    example 'Retrieving channel data' do
      do_request(id: channel.id)
      expect(status).to eq 200
    end

    example_request 'When channel is missing' do
      channel.destroy
      do_request(id: channel.id)
      expect(status).to eq 404
    end
  end
end
