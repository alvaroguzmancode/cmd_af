class CreateTipoEquipos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_equipos do |t|
      t.index :id
      t.string :descripcion

      t.timestamps
    end
  end
end
