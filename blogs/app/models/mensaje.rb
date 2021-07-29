class Mensaje < ApplicationRecord
  belongs_to :post
  validates :autor, presence: true
  validates :mensaje, presence: true, length: { in: 15..500 }
end
