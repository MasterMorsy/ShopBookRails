class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true, length: {maximum: 60}
  has_secure_password
end
