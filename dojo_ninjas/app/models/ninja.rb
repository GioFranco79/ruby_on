class Ninja < ApplicationRecord
  belongs_to :dojo
  validates :nombre, :apellido, presence: true, length: { in: 2..20 }
end
