class Todo < ApplicationRecord
  belongs_to :user
  enum category: %i[work home other]
  enum status: %i[active completed time_over]
  validates :title, presence: true
  validates :category, presence: true

  has_many :sub_todos, dependent: :destroy
end
