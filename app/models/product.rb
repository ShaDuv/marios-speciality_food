class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  before_save(:titleize_product)
  validates :name, presence: true
  validates :cost, presence: true
  validates :country, presence: true

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  scope :usa, -> {where(country: "USA")}
  scope :top_review , -> {left_joins(:reviews).group(:id).order('COUNT(reviews.id) DESC').limit(1)}
  # https://stackoverflow.com/questions/16996618/rails-order-by-results-count-of-has-many-association

    private
      def titleize_product
        self.name = self.name.titleize
      end
end
