class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  before_save {:product_title}

  private
  def product_title
    self.name = self.name.titleize
  end
end
