require 'acceptance_helper'

RSpec.resource 'Channels' do
  header "Accept", "application/json"
  header "Content-Type", "application/json"

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

    example 'When channel is missing' do
      channel.destroy
      do_request(id: channel.id)
      expect(status).to eq 404
    end
  end
end
