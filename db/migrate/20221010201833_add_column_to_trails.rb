class AddColumnToTrails < ActiveRecord::Migration[5.2]
  def change
    add_column :trails, :elevation_drop, :integer
  end
end
