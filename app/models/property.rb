class Property < ApplicationRecord
  belongs_to :user
  has_many_attached :img
  belongs_to :commune

  validates :title, presence: true
  validates :rent, inclusion: { in: [true, false] }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :dollars, inclusion: { in: [true, false] }
  validates :commune, presence: true
  validates :address, presence: true
  validates :area, presence: true, numericality: { greater_than: 0 }
  validates :rooms, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :bathrooms, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, presence: true
end
