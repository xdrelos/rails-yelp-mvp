class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid category" }

  def avg_rating
    return "Not available" if self.reviews.empty?
    sum = 0
    self.reviews.each do |review|
      sum += review.rating
    end
    (sum.to_f / self.reviews.size).round(2)
  end
end
