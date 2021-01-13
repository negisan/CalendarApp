class Plan < ApplicationRecord
  validates :label, presence: true
  validates :detail, presence: true
end
