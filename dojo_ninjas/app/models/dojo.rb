class Dojo < ApplicationRecord
    validates :nombre, :city, presence: true, length: { in: 2..20 }
    validates :state, presence: true, length: { in: 2..2 }
end
