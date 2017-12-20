class Review < ApplicationRecord
  belongs_to :cocktail

  validates :content, :rating, presence: true

  validates :rating, inclusion: {in: (0..10).to_a}, numericality: { only_integer: true }
  validates :cocktail_id, presence: true

end
