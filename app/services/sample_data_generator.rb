class SampleDataGenerator
  PROGRAM_LENGTHS = [10, 15, 30, 60, 90, 120].freeze
  DEFAULT_BLOCK = ->(*){}

  attr_reader :categories, :channels, :shows, :between

  def initialize(between: default_dates, categories: 10, channels: 10, shows: 300)
    @between = between
    @categories = categories
    @channels = channels
    @shows = shows
  end

  def generate(&block)
    block ||= DEFAULT_BLOCK

    categories_list = Array.new(categories) do
      create(Category).tap(&block)
    end

    shows_list = Array.new(shows) do
      create(Show, category: categories_list.sample).tap(&block)
    end

    channels_list = Array.new(channels) do
      create(Channel).tap(&block)
    end

    channels_list.each do |channel|
      time = between.min
      while between.min <= time && time < between.max
        Schedule.create!(
          channel: channel,
          time: time,
          show: shows_list.sample
        ).tap(&block)
        time += PROGRAM_LENGTHS.sample.minutes
      end
    end

    nil
  end

  private

  def uniq_id
    @uniq_id ||= 0
    @uniq_id += 1
  end

  def create(model, **attributes)
    model.create! name: "#{Faker::Lorem.word} #{uniq_id}", **attributes
  end

  def default_dates
    0.days.ago..8.days.from_now
  end
end
