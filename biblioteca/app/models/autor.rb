class Autor < ApplicationRecord
    has_many :edicion
    validates :nombre, :apellido, :nacionalidad, presence: true, length: { in: 2..50 }

    def nom_com
        "#{nombre} #{apellido}"
    end  
end
