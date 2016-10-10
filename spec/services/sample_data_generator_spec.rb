require 'rails_helper'

RSpec.describe SampleDataGenerator, type: :service do
  subject { -> { generator.generate } }
  let(:generator) { described_class.new(attributes) }
  let(:attributes) do
    {
      categories: 2,
      channels: 2,
      shows: 4,
      between: 1.day.ago..1.day.from_now
    }
  end

  it { expect(generator).to have_attributes attributes }
  it { is_expected.to change(Category, :count).by(generator.categories) }
  it { is_expected.to change(Channel, :count).by(generator.channels) }
  it { is_expected.to change(Show, :count).by(generator.shows) }
  it { is_expected.to change(Schedule, :count) }
end
