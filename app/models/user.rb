class User < ApplicationRecord
  belongs_to :organisation
  has_many :shifts
  has_secure_password
  validates :email, :name, uniqueness: true
  validates :email, :name, presence: true
  validates :password, length: { in: 6..22 }
end
