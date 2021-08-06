class Profesional < ApplicationRecord
    validates :titulo, :especialidad, :ciudad, :comuna, :direccion, presence: true
    belongs_to :user
end
