class AddGrudgeIdToEnemies < ActiveRecord::Migration[6.1]
  def change
    add_column :enemies, :grudge_id, :integer
  end
end
