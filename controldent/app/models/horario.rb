class Horario < ApplicationRecord
  belongs_to :profesional
  belongs_to :centro
end
