class CreateNoticia < ActiveRecord::Migration[5.2]
  def change
    create_table :noticia do |t|
      t.string :title
      t.text :cuerpo
      t.string :cuerpo

      t.timestamps
    end
  end
end
