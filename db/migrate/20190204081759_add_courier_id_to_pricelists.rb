class AddCourierIdToPricelists < ActiveRecord::Migration[5.2]
  def change
    add_column :pricelists, :courier_id, :integer
  end
end
