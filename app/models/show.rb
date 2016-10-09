class Show < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :category
  has_many :schedules
end
