class Libro < ApplicationRecord
    validates :nombre, :editorial, presence: true, length: { in: 2..90 }    
    validates :anho, presence: true, numericality: { only_integer: true }, length: { in: 4..4 }
    has_many :prestamo
   
end
