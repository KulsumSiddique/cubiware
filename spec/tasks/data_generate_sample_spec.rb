require 'rails_helper'

RSpec.describe 'data:generate_sample' do
  subject { Rake::Task['data:generate_sample'] }

  before { Cubiware::Application.load_tasks }

  before do
    expect_any_instance_of(SampleDataGenerator).to receive(:generate) do |&block|
      block.call if block
    end
  end

  around do |test|
    quiet = ENV['QUIET']
    ENV['QUIET'] = 'yes'
    test.call
    ENV['QUIET'] = quiet
  end

  it { subject.invoke }
end
