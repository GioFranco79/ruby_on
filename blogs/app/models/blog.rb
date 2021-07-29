class Blog < ApplicationRecord
    validates :nombre, :descripcion, presence: true
end
