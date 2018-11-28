class CreateEquipos < ActiveRecord::Migration[5.2]
  def change
    create_table :equipos do |t|
      t.index :id
      t.string :descripcion
      t.bigint :tipo_equipo_id
      t.bigint :fabricante_id
      t.bigint :consultorio_id
      t.string :fecha_adquisicion

      t.timestamps
    end

    add_foreign_key :equipos, :tipo_equipos, column: :tipo_equipo_id
    add_foreign_key :equipos, :fabricantes, column: :fabricante_id
  end
end
