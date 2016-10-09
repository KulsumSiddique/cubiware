require 'rails_helper'

RSpec.describe Schedule, type: :model do
  it { is_expected.to validate_presence_of :time }
  it { is_expected.to belong_to :show }
  it { is_expected.to belong_to :channel }
end
