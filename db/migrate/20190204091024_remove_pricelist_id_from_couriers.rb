class RemovePricelistIdFromCouriers < ActiveRecord::Migration[5.2]
  def change
    remove_column :couriers, :pricelist_id, :integer
  end
end
