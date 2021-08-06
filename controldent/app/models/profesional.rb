class Profesional < ApplicationRecord
    def nom_com
        "[#{rut}] : #{nombre} #{apellido}"
    end
end
