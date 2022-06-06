class Candidate < ApplicationRecord
  SECTOR = ["TV production", "Movie production", "Audio-book publishing", "Radio", "TV", "Animation movie", "Events", "Live performance", "Cultural center"]

  belongs_to :user
  has_many :tasks
  has_one :review, through: :tasks
  has_one_attached :avatar

end
