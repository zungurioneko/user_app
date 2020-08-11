class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 256 }
  validates :age, presence: true, numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 150 }
end
