class AddChannelIdToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_reference :schedules, :channel, foreign_key: true
  end
end
