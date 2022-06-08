class Task < ApplicationRecord
  belongs_to :candidate
  belongs_to :project
  has_one :review
  has_one :chatroom
end
