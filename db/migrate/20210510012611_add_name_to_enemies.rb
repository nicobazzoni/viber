class AddNameToEnemies < ActiveRecord::Migration[6.1]
  def change
    add_column :enemies, :name, :string
  end
end
