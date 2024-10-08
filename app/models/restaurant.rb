class Restaurant < ApplicationRecord
  CATEGORIES = [ "chinese", "italian", "japanese", "french", "belgian" ]
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
