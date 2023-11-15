class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  categories = %w[chinese italian japanese french belgian]
  validates :name, :category, :address, presence: true
  validates :category, inclusion: categories
end
