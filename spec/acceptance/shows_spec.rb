require 'rails_helper'
require 'rspec_api_documentation/dsl'

RSpec.resource 'Shows' do
  let!(:show) { FactoryGirl.create :show }

  get '/shows.json' do
    example "Listing shows" do
      do_request
      expect(status).to eq 200
    end
  end

  get '/shows/:id.json' do
    parameter :id, "Show's id"
    example 'Retrieving show data' do
      do_request(id: show.id)
      expect(status).to eq 200
    end

    example_request 'When show is missing' do
      show.destroy
      do_request(id: show.id)
      expect(status).to eq 404
    end
  end
end
