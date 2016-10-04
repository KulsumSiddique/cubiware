class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :shows, dependent: :destroy
end
