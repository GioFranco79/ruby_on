class Usuario < ApplicationRecord
  belongs_to :cliente
  belongs_to :centro
end
