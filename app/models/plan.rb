class Plan < ApplicationRecord
  validates :label, presence: true
  validates :detail, presence: true
  belongs_to :user
end
