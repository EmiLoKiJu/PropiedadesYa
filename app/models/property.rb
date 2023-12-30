class Property < ApplicationRecord
  belongs_to :user
  has_many_attached :pictures
  belongs_to :commune

  before_destroy :delete_attached_pictures

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

  validate :at_least_one_picture_attached
  validate :description_does_not_contain_contact_info

  def at_least_one_picture_attached
    errors.add(:pictures, 'must have at least one attached picture') unless pictures.attached? && pictures.count >= 1
  end

  def thumbnail
    pictures.first.variant(resize_to_limit: [150, 150]).processed if pictures.attached?
  end

  def make_thumbnail (picture)
    picture.variant(resize_to_limit: [150, 150]).processed
  end

  def description_does_not_contain_contact_info
    forbidden_patterns = [
      /\b\d{8}\b/,  # 10-digit phone number
      /\b\d{3}[-.\s]?\d{3}[-.\s]?\d{4}\b/,  # Phone number with common formats
      /\b[\w\.-]+@[\w\.-]+\.\w{2,}\b/,  # Email address
      /\b(?:\+\d{1,2}\s?)?\d{1,4}[-.\s]?\d{1,10}\b/,  # International phone number
      %r{(https?|ftp)://[^\s/$.?#].[^\s]*},  # URLs (websites)
      /\bgmail\b|\bhotmail\b|\byahoo\b\bprotonmail\b|\bmail\b|\bOutlook\b|\biCloud\b|\bZoho\b|\bGMX\b|\bYandex\b|\bTutanota\b/,  # Specific email domains
      # Add more patterns as needed
    ]

    forbidden_patterns.each do |pattern|
      if description =~ pattern
        errors.add(:description, 'should not contain contact information')
        break
      end
    end
  end

  def delete_attached_pictures
    pictures.each do |picture|
      picture.purge
    end
  end
end
