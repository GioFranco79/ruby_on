class Usuario < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :nombre, :apellido, presence: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :rut, presence: true, length: {in: 9..12}
  validates :fono, presence: true, numericality: { only_integer: true }, length: {in: 9..9}

  has_many :agendas
  belongs_to :cliente
  belongs_to :centro
end
