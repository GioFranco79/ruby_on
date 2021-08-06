class Cliente < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :email, uniqueness: true, format: { with: EMAIL_REGEX }
    validates :password, length: {minimum: 8, maximum: 72}, on: :create
    validates :razon, :ciudad, :comuna, :direccion, :representante, :rut, presence: true
    validates :razon, :representante, length: {minimum: 6}
    before_save :downcase_email
end
