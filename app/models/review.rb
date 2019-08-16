class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: (1..5),
    message: "%{value} is not a valid rating, please rate from 1 to 5." }
  validates :content_body, length: { minimum: 50 }
  validates :content_body, length: { maximum: 250 }

end
