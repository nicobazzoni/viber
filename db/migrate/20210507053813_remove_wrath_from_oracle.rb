class RemoveWrathFromOracle < ActiveRecord::Migration[6.1]
  def change
    remove_column :oracles, :wrath, :string
  end
end
