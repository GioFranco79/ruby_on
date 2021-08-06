class Paciente < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :email, uniqueness: true, format: { with: EMAIL_REGEX }
    validates :password, length: {minimum: 8, maximum: 72}, on: :create
    validates :nombre, :apellido, :email, :rut, fechanac, presence: true
    validates :nombre, :apellido, length: {minimum: 2}
    validates :fono, length: {in: 9..9}
    before_save :downcase_email
end
