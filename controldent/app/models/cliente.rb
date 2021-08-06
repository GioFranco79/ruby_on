class Cliente < ApplicationRecord
    has_many :centros
    has_many :usuarios
end
