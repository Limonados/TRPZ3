class Project < ApplicationRecord
  belongs_to :user, optional: true
  has_many :layers, dependent: :destroy

  validates :title, presence: true, length: { maximum: 100 }
  validates :width, :height, numericality: { only_integer: true, greater_than: 0 }
end
