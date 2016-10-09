require 'rails_helper'
require 'rspec_api_documentation/dsl'

RSpec.resource 'Schedules' do
  let!(:schedule)        { FactoryGirl.create :schedule }
  let!(:schedule_past)   { FactoryGirl.create :schedule, :past }
  let!(:schedule_future) { FactoryGirl.create :schedule, :future }

  get '/schedules.json' do
    parameter :date, 'Day to display'
    parameter :channel_id, 'Channel to display'

    example 'Listing schedules for today' do
      do_request
      expect(status).to eq 200
      expect(json_response).to match array_including hash_including schedule.attributes.as_json
      expect(json_response).not_to match array_including hash_including 'id' => schedule_future.id
      expect(json_response).not_to match array_including hash_including 'id' => schedule_past.id
    end

    example_request 'Listing schedules for given day' do
      do_request(date: schedule_future.time.to_date)
      expect(status).to eq 200

      expect(json_response).to match array_including hash_including schedule_future.attributes.as_json
      expect(json_response).not_to match array_including hash_including 'id' => schedule.id
      expect(json_response).not_to match array_including hash_including 'id' => schedule_past.id
    end

    example_request 'Listing schedules for given channel' do
      do_request(channel_id: schedule.channel.id)
      expect(status).to eq 200

      expect(json_response).to match array_including hash_including schedule.attributes.as_json
      expect(json_response).not_to match array_including hash_including 'id' => schedule_future.id
      expect(json_response).not_to match array_including hash_including 'id' => schedule_past.id
    end
  end

  get '/schedules/:id.json' do
    parameter :id, "Schedule's id"
    example 'Retrieving schedule data' do
      do_request(id: schedule.id)
      expect(status).to eq 200
    end

    example_request 'When schedule is missing' do
      schedule.destroy
      do_request(id: schedule.id)
      expect(status).to eq 404
    end
  end

  private

  def json_response
    JSON.parse response_body
  end
end
