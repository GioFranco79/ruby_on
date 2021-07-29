class Edicion < ApplicationRecord
  validates :autor_id, :libro_id, presence: true, numericality: { only_integer: true }
  belongs_to :libro
  belongs_to :autor
end
