class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  before_save {self.name = self.name.titleize}
end
