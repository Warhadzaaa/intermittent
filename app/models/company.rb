class Company < ApplicationRecord
  belongs_to :user
  has_many :projects, dependent: :destroy
  has_one_attached :avatar
  has_many :tasks, through: :projects
end
