class Horario < ApplicationRecord
  belongs_to :profesional
  belongs_to :centro
  has_many :agendas
end
