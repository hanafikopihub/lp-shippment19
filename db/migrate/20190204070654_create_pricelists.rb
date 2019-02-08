class CreatePricelists < ActiveRecord::Migration[5.2]
  def change
    create_table :pricelists do |t|
      t.string :name
      t.string :note

      t.timestamps
    end
  end
end
