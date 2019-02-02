class ChangeTextodesalaToBeTextInExposicions < ActiveRecord::Migration[5.2]
  def change
  	change_column :exposicions, :texto, :text
  end
end
