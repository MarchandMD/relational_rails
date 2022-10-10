class AddColumnToMountains < ActiveRecord::Migration[5.2]
  def change
    add_column :mountains, :elevation, :integer
  end
end
