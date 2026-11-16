class Image < ApplicationRecord
  belongs_to :layer

  validates :file_name, presence: true
  validates :file_format, inclusion: { in: %w[PNG JPEG BMP] }
  validates :width, :height, numericality: { only_integer: true, greater_than: 0 }
end
