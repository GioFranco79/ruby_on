class Cliente < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :nombre, :apellido, presence: true, length: { in: 2..20 }
    validates :mail, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
    validates :edad, presence: true, numericality: { only_integer: true }
    validates :clave, presence: true
end
