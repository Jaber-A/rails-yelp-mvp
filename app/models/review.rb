class Review < ApplicationRecord
  belongs_to :restaurant
  validates_associated :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: true
  validates_inclusion_of :rating, :in => 0..5
end
