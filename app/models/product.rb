class Product < ApplicationRecord
  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :category, presence: true

  validate :price_cents_not_zero

  private

  def price_cents_not_zero
    errors.add(:price, "can't be zero") if price_cents.zero?
  end
end
