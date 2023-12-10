class Todo < ApplicationRecord
  belongs_to :user
  enum category: %i[work home other]
  enum status: %i[active completed]
  validates :title, presence: true
  validates :category, presence: true
end
