class Equipo < ApplicationRecord
    self.primary_key = "id"
    belongs_to :fabricante
    belongs_to :tipo_equipo
    validates :descripcion, presence: true
    validates :fabricante_id, presence: true
    validates :consultorio_id, presence: true
    validates :fecha_adquisicion, presence: true
    validates :tipo_equipo_id, presence: true
end
