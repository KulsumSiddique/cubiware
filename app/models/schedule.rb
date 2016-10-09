class Schedule < ApplicationRecord
  validates :time, presence: true
  belongs_to :show
  belongs_to :channel

  scope :for_day, ->(day) { where time: (day.at_beginning_of_day..day.at_end_of_day) }
end
