class AddPriceToCouriers < ActiveRecord::Migration[5.2]
  def change
    add_column :couriers, :price, :integer
  end
end
