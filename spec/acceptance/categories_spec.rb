require 'rails_helper'
require 'rspec_api_documentation/dsl'

RSpec.resource 'Categories' do
  let!(:category) { FactoryGirl.create :category }

  get '/categories.json' do
    example "Listing categories" do
      do_request
      expect(status).to eq 200
    end
  end

  get '/categories/:id.json' do
    parameter :id, "Category's id"
    example 'Retrieving category data' do
      do_request(id: category.id)
      expect(status).to eq 200
    end

    example_request 'When category is missing' do
      category.destroy
      do_request(id: category.id)
      expect(status).to eq 404
    end
  end
end
