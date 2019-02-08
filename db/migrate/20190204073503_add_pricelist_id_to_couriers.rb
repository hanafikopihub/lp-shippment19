class AddPricelistIdToCouriers < ActiveRecord::Migration[5.2]
  def change
    add_column :couriers, :pricelist_id, :integer
  end
end
