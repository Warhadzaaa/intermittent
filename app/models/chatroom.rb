class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :task, dependent: :destroy
end
