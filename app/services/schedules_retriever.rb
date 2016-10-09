class SchedulesRetriever
  attr_reader :date, :channel_id

  def initialize(date: nil, channel_id: nil, **)
    @date = date || Date.today
    @channel_id = channel_id
  end

  def retrieve
    query = Schedule.for_day(date).order(:channel_id, :time)
    query.where!(channel_id: channel_id) if channel_id
    query
  end
end
