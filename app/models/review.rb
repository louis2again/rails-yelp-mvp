# Review has content (the text), a rating (between 0 and 5)
# and references a restaurant
class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true },
                inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
