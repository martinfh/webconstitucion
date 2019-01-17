class CreateArtista < ActiveRecord::Migration[5.2]
  def change
    create_table :artista do |t|
      t.string :nombre
      t.string :cv
      t.string :imagen

      t.timestamps
    end
  end
end
