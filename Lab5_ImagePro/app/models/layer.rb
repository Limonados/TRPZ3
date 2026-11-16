class Layer < ApplicationRecord
  belongs_to :project
  has_one :image, dependent: :destroy
  has_many :layer_filters, dependent: :destroy
  has_many :filters, through: :layer_filters

  validates :name, presence: true
  validates :opacity, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
end
