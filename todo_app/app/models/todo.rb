class Todo < ApplicationRecord
  belongs_to :user
  enum category: %i[work home other]
end
