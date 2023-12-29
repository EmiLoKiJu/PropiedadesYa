class Property < ApplicationRecord
  belongs_to :user
  has_many_attached :pictures
  belongs_to :commune

  validates :title, presence: true
  validates :rent, inclusion: { in: [true, false] }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :dollars, inclusion: { in: [true, false] }
  validates :commune_id, presence: true
  validates :address, presence: true
  validates :area, presence: true, numericality: { greater_than: 0 }
  validates :rooms, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :bathrooms, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, presence: true

  def thumbnail
    pictures.first.variant(resize_to_limit: [150, 150]).processed if pictures.attached?
  end

  def make_thumbnail (picture)
    picture.variant(resize_to_limit: [150, 150]).processed
  end
end
