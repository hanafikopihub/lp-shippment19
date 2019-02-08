class AddUserIdToPricelists < ActiveRecord::Migration[5.2]
  def change
    add_column :pricelists, :user_id, :integer
  end
end
