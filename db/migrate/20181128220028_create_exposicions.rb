class CreateExposicions < ActiveRecord::Migration[5.2]
  def change
    create_table :exposicions do |t|
      t.string :titulo_expo
      t.string :fechas
      t.string :texto
      t.string :imagenes_expo

      t.timestamps
    end
  end
end
