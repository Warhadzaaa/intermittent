class Review < ApplicationRecord
  belongs_to :task
  validates :content, presence: true
  validates :rating, presence: true
end
