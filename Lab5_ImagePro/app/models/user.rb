class User < ApplicationRecord
  has_many :projects, dependent: :nullify

  validates :login, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :role, inclusion: { in: %w[user admin] }
end
