class Filter < ApplicationRecord
  has_many :layer_filters, dependent: :destroy
  has_many :layers, through: :layer_filters

  validates :name, presence: true, uniqueness: true
  validates :intensity, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
