class StudyTip < ApplicationRecord
  validates :title, presence: true
  validates :detail, presence: true

  has_one_attached :image
end
