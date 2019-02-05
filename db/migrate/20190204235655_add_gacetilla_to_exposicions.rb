class AddGacetillaToExposicions < ActiveRecord::Migration[5.2]
  def change
    add_column :exposicions, :gacetilla, :string
  end
end
