class Shop < ApplicationRecord
  validates :name, presence: true
  validates :detail, presence: true

  has_one_attached :aicon_image
end
