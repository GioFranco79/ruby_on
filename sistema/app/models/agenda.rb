class Agenda < ApplicationRecord
  belongs_to :paciente
  belongs_to :profesional
  belongs_to :horario
  belongs_to :centro
  belongs_to :user
end
