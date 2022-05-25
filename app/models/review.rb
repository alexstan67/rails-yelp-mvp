class Review < ApplicationRecord
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: true
  validates :content, presence: true
  belongs_to :restaurant
end
