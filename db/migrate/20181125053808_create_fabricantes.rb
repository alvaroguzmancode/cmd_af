class CreateFabricantes < ActiveRecord::Migration[5.2]
  def change
    create_table :fabricantes do |t|
      t.index :id
      t.string :descripcion

      t.timestamps
    end
  end
end
