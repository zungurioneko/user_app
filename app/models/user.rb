class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, length: { maximum: 256 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :age, presence: true, numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 150 }
end
