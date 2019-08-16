class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: (1..5),
    message: "%{value} is not a valid rating" }
end
