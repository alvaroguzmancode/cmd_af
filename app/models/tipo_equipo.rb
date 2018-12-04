class TipoEquipo < ApplicationRecord
    self.primary_key = "id"
    validates :descripcion, presence: true
end
