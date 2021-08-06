class Agenda < ApplicationRecord
  belongs_to :profesional
  belongs_to :centro
  belongs_to :paciente
  belongs_to :horario
  belongs_to :usuario
end
