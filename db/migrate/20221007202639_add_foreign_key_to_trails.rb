class AddForeignKeyToTrails < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :trails, :mountains, column: :mountain_id
  end
end
