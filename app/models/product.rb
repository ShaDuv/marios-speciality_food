class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  before_save(:titleize_product)
  validates :name, presence: true
  validates :cost, presence: true
  validates :country, presence: true

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  

    private
      def titleize_product
        self.name = self.name.titleize
      end
end
