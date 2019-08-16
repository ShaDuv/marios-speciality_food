class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  before_save(:titleize_product)
  validates :name, presence: true
  validates :cost, presence: true
  validates :country, presence: true

    private
      def titleize_product
        self.name = self.name.titleize
      end
end
