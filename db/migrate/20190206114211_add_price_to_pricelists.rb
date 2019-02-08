class AddPriceToPricelists < ActiveRecord::Migration[5.2]
  def change
    add_column :pricelists, :price, :integer
  end
end
