class Company < ApplicationRecord
  belongs_to :user
  has_many :projects
  has_one_attached :avatar
end
