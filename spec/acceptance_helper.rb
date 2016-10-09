require 'rails_helper'
require 'rspec_api_documentation'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  config.format = [:json, :html]
  config.curl_host = 'http://example.com:3000'
  config.api_name = "TV Schedule API"
end
