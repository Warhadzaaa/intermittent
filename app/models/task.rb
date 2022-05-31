class Task < ApplicationRecord
  belongs_to :candidate
  belongs_to :project
  has_one :review
end
