class CreateFairs < ActiveRecord::Migration[5.2]
  def change
    create_table :fairs do |t|
      t.text :nombre
      t.string :flyer

      t.timestamps
    end
  end
end
