class Schedule < ApplicationRecord
  validates :time, presence: true
  belongs_to :show
end
