class Centro < ApplicationRecord
    validates :nombre, :ciudad, :email, comuna, direccion, presence: true
    validates :fono, length: {in: 9..9}
    validates :fono, presence: true, numericality: { only_integer: true }
end
