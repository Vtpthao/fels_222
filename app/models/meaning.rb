class Meaning < ApplicationRecord
  belongs_to :word
  has_many :results
  has_many :lessons, through: :results

  validates :content, presence: true, length: {maximum: 50}
end
